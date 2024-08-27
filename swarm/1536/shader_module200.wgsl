struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1011f, -263f, 1383f, -1208f), vec4<f32>(2024f, 516f, -562f, 325f), vec4<f32>(-444f, -513f, 1803f, 160f), vec4<f32>(1587f, 1020f, -310f, 1954f), vec4<f32>(-1259f, -644f, 1599f, 182f), vec4<f32>(500f, 182f, 1931f, 1000f), vec4<f32>(1970f, 118f, -1422f, -537f), vec4<f32>(-173f, -194f, -697f, -768f), vec4<f32>(931f, -675f, -504f, 1088f), vec4<f32>(281f, 494f, 834f, -206f), vec4<f32>(1302f, -736f, -603f, 404f), vec4<f32>(1139f, -1077f, -728f, -274f), vec4<f32>(1000f, -254f, 519f, 502f), vec4<f32>(-300f, 1797f, 1088f, -705f), vec4<f32>(-844f, -1074f, -1417f, -242f), vec4<f32>(-1794f, -1000f, -916f, -217f), vec4<f32>(507f, 796f, -1526f, 150f), vec4<f32>(-1395f, -991f, 232f, -189f), vec4<f32>(-284f, 511f, -1283f, -1077f), vec4<f32>(1153f, -361f, 2486f, -1977f), vec4<f32>(1681f, -478f, -473f, -143f), vec4<f32>(-1570f, 210f, 627f, 1716f), vec4<f32>(1142f, -1072f, 1445f, 143f), vec4<f32>(-150f, -1038f, 549f, -1917f));

var<private> global3: Struct_1 = Struct_1(vec4<u32>(75329u, 28886u, 34639u, 1u), vec3<u32>(1u, 4294967295u, 96691u), vec3<f32>(-414f, 919f, 218f));

var<private> global4: Struct_3;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = reverseBits(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, global4.b), countOneBits(min(global1[_wgslsmith_index_u32(1u, 2u)], vec3<i32>(2147483647i, global4.b, 0i))))));
    let var_1 = select(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(27854i, 2147483647i), -u_input.d), u_input.d), u_input.d), max(reverseBits(global4.b), -7024i << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~u_input.a.x) % 32u)), select(true, true, _wgslsmith_sub_i32(reverseBits(0i), global4.b) >= global4.b));
    let var_2 = all(vec2<bool>(select(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), false), false));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) + _wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global3.c.x, 431f, false)))) - 185f)) - 336f);
    var var_4 = 4294967295u;
    return firstLeadingBit(-firstTrailingBit(abs(-vec2<i32>(-8548i, global4.b))));
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = global4.b;
    var var_1 = _wgslsmith_div_vec4_i32(max(firstTrailingBit(-vec4<i32>(global4.b, global4.b, 0i, u_input.b)), vec4<i32>(max(-2147483647i, -76011i) | -global4.b, -u_input.b, u_input.b, abs(abs(u_input.d)))), -(~(-vec4<i32>(u_input.d, -18327i, global4.b, -3704i))));
    let var_2 = vec2<i32>(-1i) * -(vec2<i32>(-1i) * -func_3());
    var var_3 = Struct_2(_wgslsmith_f_op_f32(global4.a * -721f), all(select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_1.a.x), select(vec3<bool>(arg_1.a.x, false, arg_1.c.x), vec3<bool>(true, arg_1.c.x, false), arg_0)), select(select(vec3<bool>(true, true, arg_1.c.x), vec3<bool>(false, arg_1.a.x, arg_1.c.x), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(arg_1.c.x, arg_0, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), arg_1.c.x)), true)), vec3<i32>(~3766i, ~(i32(-1i) * -u_input.d), -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -42128i, global4.b, ~u_input.d), abs(min(vec4<i32>(var_2.x, 588i, var_1.x, var_2.x), vec4<i32>(var_1.x, -37993i, -1i, u_input.d))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, 1i, -32717i, global4.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 0i, var_2.x, var_2.x), vec4<i32>(-2147483647i, 2147483647i, u_input.b, -64862i), vec4<i32>(2147483647i, var_2.x, 0i, var_1.x)))) >> (~(~(~global3.a)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a))))));
    var_3 = Struct_2(562f, !any(vec3<bool>(false, true, true)), ~vec3<i32>(u_input.b, ~u_input.d, min(-var_3.d.x, -1i)), vec4<i32>(0i, -(var_3.d.x ^ u_input.d) << (firstTrailingBit(~1u) % 32u), _wgslsmith_sub_i32(~61036i, -1i), -1i), _wgslsmith_f_op_f32(f32(-1f) * -368f));
    return select(vec4<bool>(any(arg_1.c), all(select(select(vec2<bool>(arg_1.c.x, var_3.b), vec2<bool>(arg_1.a.x, false), arg_1.a), vec2<bool>(true, arg_0), true)), var_3.b, arg_1.a.x), vec4<bool>(var_3.b, arg_1.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e * -1008f) - _wgslsmith_f_op_f32(-var_3.a)), false, !all(!vec3<bool>(true, false, arg_1.a.x))), -reverseBits(var_2.x) >= (_wgslsmith_sub_i32(~u_input.d, 0i) >> (_wgslsmith_dot_vec3_u32(global3.a.ywz, global3.b) % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(6592u, 24u)]))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 20u)] - 1013f) + global0[_wgslsmith_index_u32(~u_input.a.x, 20u)]), global4.a, -207f, _wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(479f - global0[_wgslsmith_index_u32(global4.c.x, 20u)]))))));
    var var_1 = arg_1;
    var var_2 = arg_2;
    global3 = Struct_1(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(u_input.a ^ vec3<u32>(24794u, global3.b.x, global3.b.x), u_input.a)), var_2.d.c.x, ~_wgslsmith_clamp_u32(22464u << (1u % 32u), ~4294967295u, u_input.a.x), 71106u), global3.b, global3.c);
    let var_3 = func_2(var_1.b, Struct_5(arg_2.b.wz, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global4.c.x, 24u)] + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.d.c.x, 20u)], 520f, global4.a, -924f)))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -335f) <= _wgslsmith_f_op_f32(step(1509f, -1000f)), !(var_2.a | var_2.b.x)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(38437u, global3.b.x, global3.b.x), global3.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.c.x, 0u, 56585u), vec3<u32>(4294967295u, 3086u, 62470u)), firstLeadingBit(u_input.a))))).zxw;
    return var_2.d;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_4(select(vec4<bool>(true, all(func_2(false, Struct_5(vec2<bool>(true, false), vec4<f32>(-179f, global3.c.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], 523f), vec2<bool>(true, true), global4.c.x))), any(vec3<bool>(true, true, true)), true), vec4<bool>(~global4.b > -12892i, true, !any(vec2<bool>(true, false)), true), true), Struct_2(1145f, false, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, global4.b, 0i)), vec3<i32>(global4.b, global4.b, global4.b)), global1[_wgslsmith_index_u32(49488u, 2u)]), vec4<i32>(-(~(-32393i)), u_input.b, u_input.b, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x))), Struct_4(false, func_2(any(vec3<bool>(true, true, true)), Struct_5(select(vec2<bool>(false, true), vec2<bool>(false, false), true), global2[_wgslsmith_index_u32(min(global3.a.x, 12628u), 24u)], vec2<bool>(true, false), ~u_input.c.x)), Struct_2(global3.c.x, !(global3.b.x >= global4.c.x), select(global1[_wgslsmith_index_u32(~global3.a.x, 2u)], vec3<i32>(-44299i, -2147483647i, global4.b), true), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.b, -41398i, u_input.b, -1i), vec4<i32>(0i, -6146i, 1i, u_input.b)), -1i & global4.b, select(global4.b, u_input.d, true)), global4.a), Struct_3(_wgslsmith_f_op_f32(-global4.a), ~global4.b, select(vec2<u32>(u_input.c.x, 8469u), global3.a.ww, vec2<bool>(true, true)) | _wgslsmith_sub_vec2_u32(vec2<u32>(global3.a.x, u_input.c.x), global4.c)), ~u_input.d));
    global4 = func_4(vec4<bool>(any(vec2<bool>(select(false, true, false), true)), all(vec4<bool>(false, true, true, false)) | true, any(vec4<bool>(true, true, true, var_0.b > u_input.b)), true), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -341f), true, vec3<i32>(-1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-14712i, var_0.b), vec2<i32>(u_input.d, var_0.b)), ~1i), vec4<i32>(global4.b, 1i, var_0.b, ~22530i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f))), Struct_4(all(vec4<bool>(any(vec2<bool>(false, false)), true, false, true)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -142f) >= global3.c.x, Struct_5(func_2(false, Struct_5(vec2<bool>(true, true), vec4<f32>(-416f, global3.c.x, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(false, false), global4.c.x)).yx, vec4<f32>(global0[_wgslsmith_index_u32(27703u, 20u)], var_0.a, -260f, global3.c.x), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), var_0.c.x)), Struct_2(1136f, true, abs(select(global1[_wgslsmith_index_u32(global4.c.x, 2u)], vec3<i32>(global4.b, global4.b, -1i), vec3<bool>(false, true, true))), abs(reverseBits(vec4<i32>(9536i, -21021i, var_0.b, 2147483647i))), _wgslsmith_div_f32(1131f, 801f)), Struct_3(1608f, ~(~(-1i)), u_input.a.yy), _wgslsmith_div_i32(var_0.b, countOneBits(1i | var_0.b))));
    global1 = array<vec3<i32>, 2>();
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.a, global3.c.x)));
    let var_2 = func_4(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), 4294967295u < var_0.c.x, any(vec2<bool>(true, true)), false)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(global3.c.x - 781f))), all(vec3<bool>(any(vec2<bool>(true, false)), true, true)), -vec3<i32>(-2831i, -u_input.d, -1i), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, 0i, -26007i, var_0.b), vec4<i32>(u_input.b, var_0.b, 43423i, -21787i)), -vec4<i32>(56251i, -2147483647i, var_0.b, 0i)), countOneBits(-vec4<i32>(28556i, var_0.b, -2147483647i, 2147483647i))), _wgslsmith_f_op_f32(func_4(vec4<bool>(true, true, true, true), Struct_2(var_1.x, true, global1[_wgslsmith_index_u32(var_0.c.x, 2u)], vec4<i32>(u_input.d, u_input.d, global4.b, 1i), var_0.a), Struct_4(true, vec4<bool>(false, true, false, false), Struct_2(-816f, true, vec3<i32>(var_0.b, -2147483647i, var_0.b), vec4<i32>(global4.b, 54796i, u_input.b, global4.b), 277f), Struct_3(1556f, u_input.b, global4.c), global4.b)).a - _wgslsmith_f_op_f32(round(-1000f)))), Struct_4(!(true == all(vec4<bool>(false, true, false, true))), select(vec4<bool>(true, true, -933f > global4.a, true), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, global4.a <= 1133f, global4.c.x != global4.c.x), false), Struct_2(-297f, select(true, true, false) & false, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], -(~vec4<i32>(global4.b, u_input.b, 8363i, u_input.d)), 280f), Struct_3(496f, global4.b, global3.a.zx), -(func_4(vec4<bool>(false, true, false, true), Struct_2(global4.a, true, global1[_wgslsmith_index_u32(global4.c.x, 2u)], vec4<i32>(1i, global4.b, var_0.b, 66765i), -2024f), Struct_4(true, vec4<bool>(false, true, true, false), Struct_2(113f, false, global1[_wgslsmith_index_u32(global3.b.x, 2u)], vec4<i32>(global4.b, var_0.b, 2147483647i, -13253i), 982f), var_0, global4.b)).b << (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(14870u, 0u, global4.c.x)) % 32u))));
    return vec2<bool>(all(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), !(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
}

fn func_5(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = ~(firstLeadingBit(~35858u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global4.c.x, global4.c.x), vec3<u32>(51626u, 0u, 118451u))) << (global4.c.x % 32u));
    global1 = array<vec3<i32>, 2>();
    let var_1 = global3.c.zy;
    return func_4(!vec4<bool>((u_input.c.x ^ 29105u) != 42790u, true, arg_0.x, arg_0.x), Struct_2(global0[_wgslsmith_index_u32(~select(1u, 4294967295u, false), 20u)], arg_0.x, vec3<i32>(~72985i, _wgslsmith_div_i32(global4.b, global4.b), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global4.b, -4115i), _wgslsmith_add_i32(global4.b, 1i))), -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-6048i, 1i, -51023i, 31589i), vec4<i32>(-1i, u_input.b, 1266i, global4.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 30163i, u_input.b, 32857i), vec4<i32>(-46889i, u_input.d, 1i, u_input.d))), _wgslsmith_f_op_f32(step(-658f, var_1.x))), Struct_4(all(vec4<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), 4807u == global3.b.x, !arg_0.x)), !func_2(arg_0.x & arg_0.x, Struct_5(vec2<bool>(arg_0.x, false), global2[_wgslsmith_index_u32(135037u, 24u)], vec2<bool>(true, arg_0.x), 70798u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, global3.c.x)), !all(arg_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b, global4.b, global4.b), vec3<i32>(u_input.b, u_input.b, -13565i), firstTrailingBit(vec3<i32>(2147483647i, -81244i, 1i))), firstLeadingBit(vec4<i32>(-19461i, global4.b, global4.b, 5321i) & vec4<i32>(u_input.b, global4.b, -33201i, u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -1923f)), Struct_3(global0[_wgslsmith_index_u32(global4.c.x, 20u)], abs(select(u_input.d, 2147483647i, true)), max(vec2<u32>(1u, global4.c.x), vec2<u32>(global3.a.x, 8341u)) | max(vec2<u32>(global3.a.x, global4.c.x), vec2<u32>(global3.a.x, global4.c.x))), func_4(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(true, false, true, false), false), Struct_2(global4.a, true, vec3<i32>(-12904i, 2147483647i, -2147483647i), select(vec4<i32>(-6972i, u_input.b, -2147483647i, global4.b), vec4<i32>(-7858i, u_input.d, u_input.d, 1i), false), _wgslsmith_f_op_f32(min(global3.c.x, -1000f))), Struct_4(all(vec3<bool>(arg_0.x, arg_0.x, true)), !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), Struct_2(-444f, arg_0.x, vec3<i32>(-1i, -2147483647i, global4.b), vec4<i32>(global4.b, global4.b, u_input.b, u_input.d), global3.c.x), Struct_3(var_1.x, 1i, global4.c), -2147483647i)).b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(!select(!func_1(), vec2<bool>(true, func_2(false, Struct_5(vec2<bool>(false, true), global2[_wgslsmith_index_u32(59510u, 24u)], vec2<bool>(true, true), 1u)).x), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))));
    global4 = func_5(!select(vec2<bool>(true, true), vec2<bool>(u_input.b == 1i, any(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    let var_0 = Struct_4((542f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(65675u, 20u)] + -117f))) | (((global3.a.x > u_input.c.x) & all(vec3<bool>(true, true, true))) && (_wgslsmith_div_i32(global4.b, u_input.b) < global4.b)), select(vec4<bool>(func_1().x, true, false, any(vec2<bool>(true, true))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), true), vec4<bool>(false, func_2(all(vec4<bool>(true, false, false, false)), Struct_5(vec2<bool>(false, false), global2[_wgslsmith_index_u32(13329u, 24u)], vec2<bool>(false, false), 70412u)).x, true, true)), Struct_2(1000f, true, abs(abs(global1[_wgslsmith_index_u32(19586u, 2u)])) ^ global1[_wgslsmith_index_u32(abs(4294967295u), 2u)], ~vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.d), -55458i, ~u_input.d, u_input.d), func_4(func_2(all(vec4<bool>(true, true, true, true)), Struct_5(vec2<bool>(true, true), global2[_wgslsmith_index_u32(1u, 24u)], vec2<bool>(false, false), u_input.c.x)), Struct_2(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global4.c.x, 20u)])), true, -global1[_wgslsmith_index_u32(global3.b.x, 2u)], firstLeadingBit(vec4<i32>(global4.b, global4.b, global4.b, -855i)), -833f), Struct_4(all(vec3<bool>(true, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), Struct_2(689f, true, global1[_wgslsmith_index_u32(global3.a.x, 2u)], vec4<i32>(0i, global4.b, -1i, 90513i), 717f), Struct_3(1674f, -15456i, vec2<u32>(51024u, u_input.c.x)), ~u_input.d)).a), Struct_3(_wgslsmith_f_op_f32(1f * -871f), _wgslsmith_mult_i32(max(countOneBits(global4.b), reverseBits(58244i)), u_input.d & -2147483647i), _wgslsmith_mod_vec2_u32(vec2<u32>(global4.c.x | 4294967295u, max(45682u, u_input.c.x)), vec2<u32>(global3.b.x << (1u % 32u), 20723u))), i32(-1i) * -u_input.b);
    var var_1 = 1u;
    var_1 = _wgslsmith_clamp_u32(20298u, 1u >> ((max(min(u_input.a.x, global4.c.x), 1u) & 1u) % 32u), global3.b.x);
    let var_2 = min(global1[_wgslsmith_index_u32(global3.a.x, 2u)] << (abs(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.c.x, u_input.c.x, global4.c.x), u_input.c.ywz), u_input.c.wyx)) % vec3<u32>(32u)), ~var_0.c.d.yzz);
    global4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<u32>(~(~abs(var_0.d.c.x)), global4.c.x, var_0.d.c.x, u_input.c.x), global3.c.x);
}

