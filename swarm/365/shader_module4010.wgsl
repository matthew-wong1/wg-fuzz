struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1000f, -1000f, -404f, -1996f, 338f, -1533f, 368f, 1072f, -729f, -766f, -843f, 896f, -586f, -814f, -1225f, 286f, 285f, 142f, 1000f, 559f, -1465f, -1000f, 649f, 305f, 1604f, -1000f, -606f, -2055f, 126f, 1000f, 582f, -1630f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    var var_0 = firstTrailingBit(arg_1.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 32u)], -299f))), global0[_wgslsmith_index_u32(~arg_0.c.x, 32u)]));
    var_0 = vec3<u32>(u_input.d, 0u, 1u);
    let var_2 = arg_1;
    global0 = array<f32, 32>();
    return select(vec4<bool>(select(!arg_1.a, arg_0.a, true) | (!var_2.a || select(arg_1.a, var_2.a, true)), true, true, 22538u <= _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 18533u, arg_0.c.x), vec3<u32>(1u, 4294967295u, 1u)), arg_0.c.x)), !select(select(select(vec4<bool>(true, false, arg_1.a, arg_0.a), vec4<bool>(arg_0.a, arg_1.a, arg_1.a, arg_2), false), select(vec4<bool>(false, var_2.a, arg_0.a, var_2.a), vec4<bool>(false, arg_0.a, var_2.a, false), vec4<bool>(arg_1.a, false, arg_0.a, var_2.a)), select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, true, var_2.a), vec4<bool>(var_2.a, false, arg_0.a, false))), select(!vec4<bool>(false, true, true, var_2.a), select(vec4<bool>(arg_1.a, true, true, arg_0.a), vec4<bool>(var_2.a, var_2.a, true, true), false), true), arg_2), arg_1.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = arg_0;
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23081u, 32u)])), _wgslsmith_f_op_f32(trunc(var_1.b.x)), var_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(194f, arg_0.b.x, 472f, -1025f)), var_1.b, !vec4<bool>(true, arg_0.a, false, false))))), select(vec4<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), var_0.a, true, all(vec3<bool>(var_0.a, arg_0.a, var_0.a))), select(vec4<bool>(true, var_0.a, var_0.a, arg_0.a), func_3(arg_0, arg_0, var_0.a), arg_0.c.x <= 4294967295u), vec4<bool>(true, true, func_3(Struct_1(false, arg_1, vec3<u32>(1u, 11893u, 0u)), Struct_1(arg_0.a, vec4<f32>(arg_1.x, var_0.b.x, -1000f, 1086f), u_input.a), false).x, true)))), _wgslsmith_div_vec3_u32(vec3<u32>(~17614u, ~(~u_input.c), ~7565u), ~vec3<u32>(var_1.c.x, var_1.c.x, 4294967295u | var_1.c.x)));
    let var_3 = var_1;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = (_wgslsmith_sub_vec3_i32((vec3<i32>(1855i, -13766i, 22460i) << (vec3<u32>(4294967295u, 17011u, arg_1.c.x) % vec3<u32>(32u))) >> ((arg_1.c >> (arg_1.c % vec3<u32>(32u))) % vec3<u32>(32u)), ~abs(vec3<i32>(2147483647i, 1i, 1i))) << (_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 79874u, u_input.c), arg_0.c) >> (vec3<u32>(0u, arg_0.c.x, 72091u) % vec3<u32>(32u)), arg_0.c) % vec3<u32>(32u))) ^ vec3<i32>(-(_wgslsmith_mult_i32(89595i, -1i) << (u_input.a.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, 1i, 8138i)), -7108i);
    let var_1 = 41717i;
    let var_2 = select(select(vec2<bool>(arg_0.a, true), vec2<bool>(func_3(func_2(Struct_1(arg_2, arg_1.b, vec3<u32>(1u, 1u, arg_0.c.x)), arg_1.b), func_2(Struct_1(true, vec4<f32>(-1000f, global0[_wgslsmith_index_u32(arg_0.c.x, 32u)], -143f, -273f), arg_1.c), arg_0.b), arg_1.a).x, true), abs(~1u) < _wgslsmith_clamp_u32(u_input.e.x >> (4294967295u % 32u), arg_0.c.x << (1u % 32u), 1u)), vec2<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(sign(arg_3.x)), select(arg_0.a, arg_2, arg_2))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(439f, 1156f)), _wgslsmith_f_op_f32(floor(arg_1.b.x))))), vec2<bool>(true, false));
    var var_3 = 116f;
    var var_4 = vec3<u32>(arg_0.c.x, u_input.c >> (~arg_1.c.x % 32u), u_input.e.x);
    return arg_1;
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, -177f, 1672f, global0[_wgslsmith_index_u32(u_input.c, 32u)])), vec4<f32>(826f, -1000f, -466f, global0[_wgslsmith_index_u32(47832u, 32u)]))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, u_input.b, u_input.b), select(vec3<u32>(u_input.c, 79792u, u_input.e.x), vec3<u32>(u_input.a.x, 10023u, 6745u), vec3<bool>(false, false, true)), vec3<u32>(u_input.b, u_input.b, 0u))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(u_input.d), 32u)]), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 32u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 32u)]), 1823f)), Struct_1(false | any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-func_2(Struct_1(false, vec4<f32>(928f, global0[_wgslsmith_index_u32(u_input.b, 32u)], -586f, global0[_wgslsmith_index_u32(u_input.d, 32u)]), vec3<u32>(6073u, 32429u, 11926u)), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], -637f, global0[_wgslsmith_index_u32(u_input.c, 32u)])).b), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 32u)]), 1000f, -1555f, global0[_wgslsmith_index_u32(max(3954u, u_input.a.x), 32u)]), true)), _wgslsmith_mod_vec3_u32(~vec3<u32>(91714u, u_input.b, u_input.b), ~max(vec3<u32>(4294967295u, 25769u, 15997u), vec3<u32>(u_input.e.x, 0u, 63748u)))), true, vec3<f32>(global0[_wgslsmith_index_u32(~abs(1u), 32u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~min(u_input.e, vec3<u32>(u_input.a.x, 88883u, 0u)), vec3<u32>(~64445u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.e.x), u_input.a))), 32u)], -1402f));
    return all(func_3(var_0, var_0, false).wy) == var_0.a;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 32>();
    var var_0 = func_4(Struct_1(!any(!vec4<bool>(arg_2.x, arg_2.x, true, false)), func_4(arg_1, Struct_1(func_1(), _wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(216f, -556f, 1196f, 1000f)), u_input.e), true, arg_1.b.zyy).b, vec3<u32>(arg_0, arg_1.c.x, arg_0)), Struct_1(func_3(Struct_1(true, _wgslsmith_f_op_vec4_f32(-arg_1.b), u_input.e), func_4(Struct_1(arg_2.x, vec4<f32>(-366f, arg_1.b.x, 1775f, -820f), vec3<u32>(u_input.e.x, 4294967295u, arg_0)), func_4(arg_1, arg_1, true, arg_1.b.yxy), arg_1.b.x >= -249f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(538f, arg_1.b.x, arg_1.b.x), arg_1.b.yww))), false).x, _wgslsmith_f_op_vec4_f32(-arg_1.b), select(arg_1.c, ~(vec3<u32>(arg_1.c.x, arg_1.c.x, 1u) ^ vec3<u32>(arg_1.c.x, arg_1.c.x, u_input.b)), false)), any(select(select(!vec2<bool>(true, arg_1.a), arg_2.yx, arg_2.x), vec2<bool>(func_3(Struct_1(false, vec4<f32>(-512f, global0[_wgslsmith_index_u32(1u, 32u)], arg_1.b.x, arg_1.b.x), arg_1.c), Struct_1(arg_2.x, arg_1.b, vec3<u32>(1u, u_input.b, 4294967295u)), true).x, !arg_1.a), select(select(vec2<bool>(false, arg_2.x), arg_2.zy, arg_1.a), !arg_2.wx, func_4(Struct_1(arg_2.x, arg_1.b, arg_1.c), Struct_1(arg_2.x, vec4<f32>(1000f, 1000f, 372f, arg_1.b.x), vec3<u32>(0u, 4294967295u, 22005u)), arg_2.x, arg_1.b.xyx).a))), arg_1.b.xzz).b.x;
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, countOneBits(_wgslsmith_clamp_i32(-18182i, 2147483647i, 44233i)))), vec2<i32>(_wgslsmith_clamp_i32(abs(firstTrailingBit(-34831i)), 0i, 0i), _wgslsmith_clamp_i32(i32(-1i) * -23764i, 17660i, max(1i, ~(-21791i)))));
    let var_2 = abs(~_wgslsmith_mod_i32(1i, 17550i));
    var var_3 = countOneBits(reverseBits(-max(0i, var_1.x)) ^ -37818i);
    return Struct_1(arg_2.x, vec4<f32>(global0[_wgslsmith_index_u32(~0u, 32u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1854f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 32u)] + 1988f))), arg_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(849f)) - -1918f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_1.c.yz, ~u_input.a.zy), 32u)]))), ~(~(~arg_1.c | ~arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(~u_input.c), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1473f, 734f, -1257f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])) - vec4<f32>(761f, 616f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(51552u, 32u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)])))), func_1())), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.e, ~vec3<u32>(u_input.a.x, u_input.e.x, 23208u)), _wgslsmith_sub_vec3_u32(~u_input.e, vec3<u32>(42652u, u_input.e.x, u_input.b)), u_input.a)), vec4<bool>(func_3(func_4(func_2(Struct_1(false, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], 1000f), u_input.e), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], -793f, global0[_wgslsmith_index_u32(u_input.e.x, 32u)])), func_4(Struct_1(false, vec4<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], 1356f), u_input.e), Struct_1(false, vec4<f32>(-403f, global0[_wgslsmith_index_u32(u_input.e.x, 32u)], 528f, 782f), u_input.a), true, vec3<f32>(419f, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]) * vec3<f32>(642f, 577f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))), func_4(func_2(Struct_1(false, vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], 780f, global0[_wgslsmith_index_u32(62254u, 32u)], 1572f), vec3<u32>(u_input.a.x, u_input.a.x, 19586u)), vec4<f32>(1789f, 1295f, 1161f, -539f)), func_4(Struct_1(false, vec4<f32>(global0[_wgslsmith_index_u32(2957u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 112f, 872f), u_input.e), Struct_1(false, vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], global0[_wgslsmith_index_u32(u_input.c, 32u)], -448f, global0[_wgslsmith_index_u32(1u, 32u)]), vec3<u32>(u_input.c, 28295u, u_input.a.x)), false, vec3<f32>(745f, global0[_wgslsmith_index_u32(0u, 32u)], -471f)), true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-127f, 318f, 1000f), vec3<f32>(-2177f, -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), true).x, true, false, true));
    let var_1 = Struct_1(var_0.a & var_0.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(556f, global0[_wgslsmith_index_u32(4294967295u, 32u)], var_0.b.x, 1659f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1751f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26062u, 32u)]))), -113f, -1336f))), firstTrailingBit(vec3<u32>(func_2(Struct_1(false, vec4<f32>(-425f, var_0.b.x, global0[_wgslsmith_index_u32(var_0.c.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), var_0.c), var_0.b).c.x, ~var_0.c.x, ~u_input.c) << (countOneBits(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(var_0.c.x, u_input.b, 464u))) % vec3<u32>(32u))));
    let var_2 = Struct_1(!var_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(15459u, 32u)], 395f, 1078f, global0[_wgslsmith_index_u32(u_input.b, 32u)])))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2127f, _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), var_1.b.x, var_0.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 32u)], 2334f, var_1.b.x, -394f)))), u_input.e);
    let var_3 = var_1.a;
    var_0 = func_4(func_4(var_1, var_2, var_2.a, _wgslsmith_f_op_vec3_f32(-var_1.b.xxz)), var_1, !(global0[_wgslsmith_index_u32(var_0.c.x, 32u)] > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(802f, 340f, _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)))));
    var_0 = var_2;
    let var_4 = ~16790u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32((~vec3<i32>(19091i, -11776i, 14283i) >> (~vec3<u32>(var_0.c.x, 1u, var_0.c.x) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, 2147483647i, -1i)), ~vec3<i32>(2147483647i, 28444i, 2147483647i)), _wgslsmith_div_vec3_i32(max(vec3<i32>(15493i, 1i, 22540i), vec3<i32>(33328i, -39290i, -2147483647i)) & (vec3<i32>(-36282i, 611i, 1i) >> (var_0.c % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(24799i, -13995i, 1i))), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-29804i, 13581i, -2147483647i) << (vec3<u32>(9991u, 1u, var_0.c.x) % vec3<u32>(32u))), -_wgslsmith_mult_vec3_i32(vec3<i32>(-5524i, 0i, 0i), select(vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-1i, -2147483647i, 17994i), vec3<bool>(true, false, true)))), var_1.b.zy, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.e.x, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1693f) + _wgslsmith_f_op_f32(var_2.b.x - -1188f))));
}

