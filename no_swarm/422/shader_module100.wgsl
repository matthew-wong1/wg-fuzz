struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(30758u, 0u, 51600u, 3996u), 4294967295u, 373f);

var<private> global2: array<u32, 32> = array<u32, 32>(11566u, 31353u, 72681u, 5324u, 21977u, 1686u, 1u, 4294967295u, 1u, 7452u, 1u, 9144u, 32447u, 4294967295u, 0u, 65291u, 17843u, 0u, 40504u, 0u, 44816u, 75086u, 2171u, 1u, 51154u, 1u, 9339u, 4294967295u, 1u, 1u, 1u, 4294967295u);

var<private> global3: array<f32, 10> = array<f32, 10>(1224f, -591f, 357f, -1019f, 752f, 1170f, 951f, -1926f, -2728f, -688f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> i32 {
    global1 = Struct_1(~(~(~global1.a)), _wgslsmith_dot_vec3_u32(~(~u_input.c.xyw) & min(global1.a.wxx | vec3<u32>(1u, u_input.b, 0u), vec3<u32>(global1.a.x, 4294967295u, 1u)), u_input.c.zwy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(global1.a.x, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], true)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.a.x, u_input.c.x, global1.b), vec4<u32>(0u, global1.b, 46957u, global1.b)), 10u)]) - global3[_wgslsmith_index_u32(global1.a.x & _wgslsmith_clamp_u32(u_input.c.x, 1u, 36947u), 10u)])));
    global3 = array<f32, 10>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-1043f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 10u)] - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.b, 10u)] + -1770f)))), Struct_1(select(global1.a, global1.a, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), 1u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u >> (1u % 32u), 32u)] << (~14195u % 32u), 10u)]), abs(max(~_wgslsmith_mult_u32(49239u, global2[_wgslsmith_index_u32(global1.b, 32u)]), global1.b & 1u)), vec2<bool>(select(!(1u >= global2[_wgslsmith_index_u32(global1.b, 32u)]), (1u > global1.a.x) & true, true), true), Struct_1(u_input.c, 33201u, global1.c));
    global1 = var_0.b;
    let var_1 = global0[_wgslsmith_index_u32(~58840u, 23u)];
    return _wgslsmith_sub_i32(countOneBits(_wgslsmith_sub_i32(reverseBits(u_input.d) | arg_0, _wgslsmith_mod_i32(~10662i, -var_1.d.x))), u_input.d);
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2120f, _wgslsmith_f_op_f32(f32(-1f) * -195f)) - global1.c) <= -216f);
    let var_1 = -2147483647i ^ func_3(reverseBits(~(-6071i)));
    global1 = Struct_1(vec4<u32>(~1u, 11245u, ~min(~1u, global1.b), ~arg_0.b.x), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(0u, 10u)])) + 142f));
    global3 = array<f32, 10>();
    return _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.b, 10u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1184f * arg_0.c.c) * -1587f) * global1.c));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec4<u32> {
    global2 = array<u32, 32>();
    let var_0 = _wgslsmith_div_u32(~0u, global1.a.x);
    let var_1 = arg_1.b;
    let var_2 = 40844i;
    var var_3 = _wgslsmith_div_vec3_i32(abs(~((vec3<i32>(u_input.d, u_input.d, 1i) | vec3<i32>(12966i, var_2, u_input.d)) << (firstLeadingBit(vec3<u32>(var_0, u_input.a.x, 76707u)) % vec3<u32>(32u)))), ~(~min(countOneBits(vec3<i32>(-40678i, 17198i, -2147483647i)), firstTrailingBit(vec3<i32>(-33682i, 1i, -1i)))));
    return ~firstTrailingBit(vec4<u32>(4892u, 20699u, u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(24633u, 0u, arg_1.b.a.x), u_input.c.zzy), arg_1.e.a.www)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f)), Struct_2(_wgslsmith_f_op_f32(-686f + _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(abs(global1.a), u_input.a.x, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(global1.b, 23u)]))), ~0u, !(!arg_0.zx), Struct_1(select(global1.a, vec4<u32>(u_input.a.x, u_input.c.x, global1.b, global1.a.x), vec4<bool>(arg_0.x, true, false, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, global1.a.x), u_input.c.ww), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12443u, 32u)], 10u)], arg_1.x))))), ~max(_wgslsmith_mult_u32(~19848u, 9090u >> (global1.b % 32u)), global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 10u)])));
    global1 = Struct_1(~max(u_input.c, vec4<u32>(0u, 0u, 28963u, global2[_wgslsmith_index_u32(25426u, 32u)])) ^ ~vec4<u32>(40905u, ~1u, func_4(-417f, Struct_2(1694f, Struct_1(vec4<u32>(u_input.b, global1.b, var_0.a.x, u_input.a.x), global1.a.x, -408f), 34325u, arg_0.zz, var_0)).x, var_0.a.x), 1u, _wgslsmith_f_op_f32(trunc(676f)));
    let var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(0u), 32u)], 23u)];
    global2 = array<u32, 32>();
    let var_2 = arg_0.x;
    return global0[_wgslsmith_index_u32(9733u, 23u)];
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global3 = array<f32, 10>();
    global1 = arg_0.c;
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(1432u, 10u)], func_1(vec3<bool>(true, true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, global1.c, -1000f, global1.c) * vec4<f32>(696f, global3[_wgslsmith_index_u32(arg_0.c.a.x, 10u)], -376f, -876f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 461f, -1000f, -1868f) - vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], 1000f, arg_0.e.c, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(79975u, 10u)], -397f, global1.c, -718f))))).c, _wgslsmith_add_u32(~(~1u), u_input.b) & 0u, select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false)), select(vec2<bool>(all(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), false), u_input.c.x == (u_input.c.x | u_input.b)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true))), vec2<bool>(select(true, false, false), all(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(2009f * global1.c) >= 1182f)), func_1(vec3<bool>(all(vec3<bool>(true, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !all(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.a.x, 10u)]), -1000f, 152f) * vec4<f32>(-890f, -1000f, -844f, _wgslsmith_f_op_f32(min(global1.c, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.e.b, 32u)], 10u)]))))).e);
    let var_1 = global1.c;
    global3 = array<f32, 10>();
    return Struct_2(arg_0.c.c, Struct_1(~(~(vec4<u32>(0u, 53619u, 0u, u_input.b) ^ global1.a)), ~(~(global2[_wgslsmith_index_u32(u_input.b, 32u)] | global2[_wgslsmith_index_u32(global1.b, 32u)])), -1104f), global1.a.x, var_0.d, func_1(select(select(!vec3<bool>(false, false, var_0.d.x), select(vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), true), select(vec3<bool>(var_0.d.x, var_0.d.x, true), vec3<bool>(false, true, var_0.d.x), true)), select(vec3<bool>(var_0.d.x, false, var_0.d.x), !vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), !vec3<bool>(false, var_0.d.x, var_0.d.x)), vec3<bool>(!var_0.d.x, var_0.d.x, true)), vec4<f32>(-1621f, arg_0.e.c, 1460f, global1.c)).c);
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec4<bool>(true || (u_input.d != u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(29346i, u_input.d), arg_3.d.xy), min(41268i, u_input.d), u_input.d), vec4<i32>(func_1(arg_0.wzz, vec4<f32>(global1.c, -1463f, arg_2.e.c, global3[_wgslsmith_index_u32(29174u, 10u)])).d.x, -3010i, countOneBits(9481i), _wgslsmith_mult_i32(32734i, 0i))) > 22889i, false, func_5(func_1(!arg_0.yyw, _wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 1325f, global3[_wgslsmith_index_u32(0u, 10u)], arg_2.e.c) * vec4<f32>(-248f, -678f, 440f, global3[_wgslsmith_index_u32(arg_1, 10u)])))).d.x || true);
    let var_1 = arg_3.c.a.wzx;
    let var_2 = arg_2.d;
    global3 = array<f32, 10>();
    global3 = array<f32, 10>();
    return arg_2.b;
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    let var_0 = vec4<bool>(arg_0.d.x, arg_0.d.x && !(!func_5(Struct_3(vec3<i32>(-1i, 1i, arg_2.d.x), u_input.c, Struct_1(global1.a, 0u, arg_0.b.c), arg_2.d, Struct_1(arg_0.b.a, arg_2.e.b, 1822f))).d.x), !any(vec3<bool>(true, all(vec4<bool>(arg_0.d.x, false, false, true)), select(false, arg_0.d.x, arg_0.d.x))), select(all(select(vec3<bool>(arg_0.d.x, arg_0.d.x, false), vec3<bool>(true, true, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x))) && arg_0.d.x, arg_0.d.x || arg_0.d.x, all(select(arg_0.d, !vec2<bool>(arg_0.d.x, arg_0.d.x), !vec2<bool>(arg_0.d.x, false)))));
    var var_1 = _wgslsmith_dot_vec2_i32(firstTrailingBit(arg_2.a.xz), reverseBits(vec2<i32>(arg_2.a.x, _wgslsmith_dot_vec3_i32(arg_2.a, arg_2.d.yww >> (u_input.c.ywz % vec3<u32>(32u))))));
    var var_2 = ~firstTrailingBit(firstTrailingBit(arg_2.d));
    global3 = array<f32, 10>();
    var var_3 = _wgslsmith_mult_u32(20382u >> (func_5(Struct_3(-arg_2.d.wwy, global1.a & arg_0.e.a, func_1(vec3<bool>(arg_0.d.x, false, var_0.x), vec4<f32>(-1755f, global1.c, 248f, -1000f)).c, arg_2.d >> (global1.a % vec4<u32>(32u)), arg_2.e)).c % 32u), global1.b ^ arg_1.a.x);
    return -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_2.d.xyz, firstLeadingBit(-vec3<i32>(-2147483647i, var_2.x, -1i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 17800i, var_2.x), arg_2.d.yww), vec3<i32>(var_2.x, -u_input.d, var_2.x), vec3<i32>(-20605i, 2700i, ~3771i)), vec3<i32>(~1i, var_2.x, reverseBits(~arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 32>();
    var var_0 = func_7(Struct_2(global1.c, func_6(vec4<bool>(true, u_input.d > u_input.d, true, true), 53085u, func_5(func_1(vec3<bool>(false, true, false), vec4<f32>(733f, -528f, -815f, global3[_wgslsmith_index_u32(global1.b, 10u)]))), func_1(vec3<bool>(false, true, false), vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global1.c, 767f, 1271f))), ~_wgslsmith_mod_u32(~27753u, ~107214u), vec2<bool>(false, false), func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -358f, global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global1.c))).c), func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1077f, global3[_wgslsmith_index_u32(global1.b, 10u)], global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 10u)], 156f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 32u)], 10u)], -100f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(7990u, 10u)], -838f, 545f, -173f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1132f, -571f, global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 10u)]) * vec4<f32>(-556f, global1.c, -140f, -479f))))).e, func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-224f, -308f, 722f, 616f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -432f, -1000f, -1960f))))), -105f);
    var var_1 = func_5(func_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global1.b, 10u)], 859f, 181f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26742u, 32u)], 32u)], 10u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1.c, global3[_wgslsmith_index_u32(8472u, 10u)], global1.c), vec4<f32>(global1.c, global1.c, global1.c, global3[_wgslsmith_index_u32(16761u, 10u)]))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(926f, -1060f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(754f, _wgslsmith_f_op_f32(f32(-1f) * -1303f))))))));
    let var_3 = select(var_1.d, var_1.d, var_1.d.x);
    var var_4 = all(var_3) && any(select(select(select(vec3<bool>(var_3.x, true, false), vec3<bool>(var_1.d.x, true, var_1.d.x), false), select(vec3<bool>(true, var_3.x, var_1.d.x), vec3<bool>(var_1.d.x, false, true), false), var_1.d.x | var_3.x), !select(vec3<bool>(false, true, true), vec3<bool>(var_1.d.x, var_3.x, false), vec3<bool>(true, var_3.x, var_1.d.x)), !(global2[_wgslsmith_index_u32(global1.a.x, 32u)] != var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1779f, _wgslsmith_f_op_f32(abs(-1028f)), 125f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(539f, var_2.x, 102f), vec3<f32>(var_2.x, -921f, 480f)))))), !(~var_1.b.a.x >= 61023u))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, -30506i, 0i, -5266i), vec4<i32>(1i, u_input.d, var_0.x, 98882i)), -vec4<i32>(-2147483647i, var_0.x, var_0.x, -3612i)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.d, var_0.x, -20429i, -54358i), vec4<i32>(u_input.d, var_0.x, var_0.x, 2147483647i)), abs(vec4<i32>(var_0.x, u_input.d, -36917i, var_0.x)), ~vec4<i32>(var_0.x, u_input.d, var_0.x, u_input.d))), global1.c, firstTrailingBit(vec2<u32>(0u, 2830u)), _wgslsmith_f_op_f32(f32(-1f) * -288f));
}

