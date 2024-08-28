struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(1124f, 366f));

var<private> global1: array<bool, 16>;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec2<f32>(733f, -2270f)), Struct_2(vec2<f32>(473f, -655f)), Struct_2(vec2<f32>(-152f, -167f)), Struct_2(vec2<f32>(-620f, 1000f)), Struct_2(vec2<f32>(876f, 315f)), Struct_2(vec2<f32>(486f, 273f)), Struct_2(vec2<f32>(-2156f, -543f)), Struct_2(vec2<f32>(1000f, -696f)), Struct_2(vec2<f32>(-223f, 1332f)), Struct_2(vec2<f32>(-646f, -1626f)), Struct_2(vec2<f32>(-954f, -153f)), Struct_2(vec2<f32>(-637f, -623f)), Struct_2(vec2<f32>(-391f, 1856f)), Struct_2(vec2<f32>(131f, -1000f)), Struct_2(vec2<f32>(-622f, -619f)), Struct_2(vec2<f32>(-383f, -1791f)), Struct_2(vec2<f32>(-302f, 141f)), Struct_2(vec2<f32>(1000f, 1246f)), Struct_2(vec2<f32>(1033f, 1535f)));

var<private> global3: array<vec2<i32>, 16>;

var<private> global4: array<Struct_2, 7>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: i32) -> vec4<f32> {
    let var_0 = ~25091i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) * arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -232f)) * -954f) * _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(round(arg_0.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(floor(1f));
    let var_3 = -vec3<i32>(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x) | reverseBits(select(u_input.c.x, arg_3, false)), u_input.b, arg_3);
    let var_4 = -1030f;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(120f, 370f, arg_1.a.x, -1000f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(383f, var_1, -1179f, arg_0.a.x)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    return arg_2.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 348f)))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_div_vec2_f32(global0.a, global0.a), vec2<bool>(global1[_wgslsmith_index_u32(2870u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)])), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-112f, -596f)), vec2<bool>(false, global1[_wgslsmith_index_u32(96022u, 16u)])), vec3<bool>(true, global0.a.x <= -1000f, true), -u_input.a.x ^ -u_input.b)), Struct_1(global0.a, select(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 16u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(13479u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(48180u, 16u)])), true)), Struct_1(global0.a, vec2<bool>(global1[_wgslsmith_index_u32(51374u, 16u)], true)))), select(vec2<bool>(all(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 16u)])), global1[_wgslsmith_index_u32(~1u, 16u)]), vec2<bool>(true, true), select(!select(vec2<bool>(global1[_wgslsmith_index_u32(43104u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(75686u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(27334u, 16u)])), vec2<bool>(true, true != global1[_wgslsmith_index_u32(4294967295u, 16u)]), true)));
    global2 = array<Struct_2, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 2018f, global0.a.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(490f, global0.a.x, -1079f, 185f) * vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(round(global0.a.x)), -852f, global0.a.x)), vec4<bool>(true, var_0.b.x, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(595f, -1000f), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false), vec2<bool>(true, var_0.b.x), var_0.b)), Struct_1(var_0.a, select(vec2<bool>(false, var_0.b.x), var_0.b, false)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(30488u, 16u)], global1[_wgslsmith_index_u32(122314u, 16u)], true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], true, true), true), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0.b.x), select(vec3<bool>(global1[_wgslsmith_index_u32(9355u, 16u)], global1[_wgslsmith_index_u32(24512u, 16u)], false), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(40720u, 16u)])), 42210i)).wz, vec2<bool>(false, true)), Struct_1(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + var_0.a.x))), !var_0.b))).x;
    global2 = array<Struct_2, 19>();
    var var_2 = select(select(vec4<bool>(select(!var_0.b.x, !var_0.b.x, true), !all(vec4<bool>(global1[_wgslsmith_index_u32(41639u, 16u)], var_0.b.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0.b.x)), _wgslsmith_sub_i32(-1i, u_input.b) > u_input.b, any(select(vec3<bool>(global1[_wgslsmith_index_u32(10157u, 16u)], var_0.b.x, false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(global1[_wgslsmith_index_u32(29646u, 16u)], var_0.b.x, false)))), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], var_0.b.x, var_0.b.x, true)), vec4<bool>(false, !global1[_wgslsmith_index_u32(1u, 16u)], all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), true), !vec4<bool>(true, true, false, var_0.b.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], -491f < var_0.a.x, all(vec4<bool>(var_0.b.x, false, true, global1[_wgslsmith_index_u32(4294967295u, 16u)])), select(false, var_0.b.x, global1[_wgslsmith_index_u32(4294967295u, 16u)])), vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, true, any(vec3<bool>(true, global1[_wgslsmith_index_u32(74972u, 16u)], global1[_wgslsmith_index_u32(30743u, 16u)]))), false)), select(vec4<bool>(false, any(select(vec3<bool>(var_0.b.x, true, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, global1[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], false, true))), any(!vec4<bool>(false, global1[_wgslsmith_index_u32(16751u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], true)), !global1[_wgslsmith_index_u32(~61585u, 16u)]), !select(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], true, false, true), !vec4<bool>(true, global1[_wgslsmith_index_u32(32904u, 16u)], global1[_wgslsmith_index_u32(18898u, 16u)], true), true), !(!select(vec4<bool>(true, var_0.b.x, var_0.b.x, global1[_wgslsmith_index_u32(24229u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], false, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]), false))), any(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(69763u, 16u)], true, global1[_wgslsmith_index_u32(44782u, 16u)], global1[_wgslsmith_index_u32(39935u, 16u)]), vec4<bool>(var_0.b.x, false, global1[_wgslsmith_index_u32(102335u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], var_0.b.x, true, false)), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(true, var_0.b.x, false, false), select(vec4<bool>(var_0.b.x, var_0.b.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], true), vec4<bool>(true, var_0.b.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], var_0.b.x, false, false)), false), !select(vec4<bool>(var_0.b.x, true, global1[_wgslsmith_index_u32(118807u, 16u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)], true, global1[_wgslsmith_index_u32(34006u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], true, false, var_0.b.x)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), var_0.b);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = abs(u_input.c.x);
    var var_1 = ~(33568u << (max(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 24827u), vec2<u32>(0u, 35719u)), ~abs(63677u)) % 32u));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(35117u, _wgslsmith_mult_u32(~abs(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u)), ~1u)), 19u)];
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_2.a));
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, select(countOneBits(-32698i), u_input.b, false | arg_1), -1380i), max(vec4<i32>(1i, 18973i, 1i, -56483i) ^ -_wgslsmith_mod_vec4_i32(vec4<i32>(-19323i, 28854i, -2147483647i, arg_0), vec4<i32>(1i, u_input.c.x, -54873i, u_input.c.x)), firstTrailingBit(firstLeadingBit(select(vec4<i32>(u_input.a.x, arg_0, u_input.c.x, u_input.a.x), vec4<i32>(9552i, arg_0, 43020i, -7150i), arg_1)))));
    return abs(vec2<u32>(_wgslsmith_add_u32(23163u, 1u), 32303u));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(func_4(global4[_wgslsmith_index_u32(1u, 7u)], vec4<f32>(_wgslsmith_f_op_f32(-756f * 1000f), 1682f, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(global0.a.x, 428f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-537f, 2244f), vec2<bool>(false, global1[_wgslsmith_index_u32(18696u, 16u)])), vec3<bool>(true, true, false), u_input.b)).x, _wgslsmith_f_op_f32(floor(global0.a.x))), Struct_1(global0.a, select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 16u)], true), vec2<bool>(true, true), global1[_wgslsmith_index_u32(74259u, 16u)])), func_2()))));
    global1 = array<bool, 16>();
    let var_1 = _wgslsmith_div_f32(var_0.a.x, -935f);
    var var_2 = func_2();
    global0 = global4[_wgslsmith_index_u32(abs(~min(~(~arg_0.x), ~1u >> (_wgslsmith_mult_u32(arg_0.x, arg_0.x) % 32u))), 7u)];
    return func_2();
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    let var_0 = true | select(arg_0, arg_0 != global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 55765u, 61309u)), 16u)], true);
    var var_1 = 2147483647i;
    var var_2 = arg_1.zw << (vec2<u32>(countOneBits(arg_1.x), arg_1.x) % vec2<u32>(32u));
    let var_3 = func_6(~(~arg_1.yw) | func_5(-2147483647i, true, func_2()), min(-(_wgslsmith_mult_i32(-2147483647i, u_input.c.x) | -24242i), firstTrailingBit(~(-7637i))));
    var var_4 = abs(_wgslsmith_clamp_u32(var_2.x, 1u ^ var_2.x, 4294967295u));
    return ~_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_1), arg_1);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global4 = array<Struct_2, 7>();
    var var_0 = vec3<u32>(1u, firstTrailingBit(_wgslsmith_div_u32(19916u, ~_wgslsmith_mult_u32(4294967295u, 0u))), 62137u);
    global0 = Struct_2(global0.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 572f, -1000f, arg_2.a.x)) - vec4<f32>(arg_1.a.x, global0.a.x, arg_0.a.x, 118f)), Struct_1(vec2<f32>(arg_1.a.x, arg_0.a.x), arg_1.b), arg_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(607f, global0.a.x) + arg_2.a)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(-155f)), arg_0.a.x))));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1331f, -802f), var_1)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1000f)))));
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global4 = array<Struct_2, 7>();
    var var_1 = 1u;
    let var_2 = -_wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, 13874i)), -vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(19941i, u_input.a.x, -1i, 17381i) & vec4<i32>(-19100i, u_input.c.x, 0i, u_input.c.x), ~vec4<i32>(-25595i, u_input.b, -32067i, 0i)), var_0), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, -21843i, u_input.c.x, -2147483647i), -vec4<i32>(u_input.c.x, 45016i, 1i, 3229i), reverseBits(vec4<i32>(-32567i, u_input.a.x, 2147483647i, u_input.a.x))) & _wgslsmith_mult_vec4_i32(~vec4<i32>(55172i, 0i, -48179i, 4056i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, u_input.b, u_input.b), vec4<i32>(75292i, u_input.c.x, 0i, u_input.a.x))));
    var var_3 = !(!select(vec2<bool>(global1[_wgslsmith_index_u32(~83477u, 16u)], var_0), vec2<bool>(!var_0, true), !(!vec2<bool>(var_0, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(~50575u), ~50755u, ~0u), vec4<i32>(57680i, abs(2147483647i), ~69130i, u_input.a.x), ~min(func_7(global4[_wgslsmith_index_u32(func_1(var_0, vec4<u32>(4294967295u, 74409u, 1u, 0u)), 7u)], func_2(), Struct_2(vec2<f32>(1919f, global0.a.x))), ~func_1(var_3.x, vec4<u32>(1u, 26639u, 0u, 17502u))), 4294967295u, -55187i);
}

