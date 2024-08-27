struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> i32 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = false;
    var_0 = any(!select(select(vec4<bool>(arg_2.x, arg_0.c, false, true), vec4<bool>(false, arg_0.c, arg_0.c, false), vec4<bool>(arg_2.x, arg_0.c, arg_0.c, arg_2.x)), select(vec4<bool>(true, false, arg_2.x, true), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), arg_0.c), select(true, false, arg_0.c))) | false;
    global0 = array<Struct_1, 17>();
    return select(13790i, arg_0.a.x, true);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = -1i;
    global0 = array<Struct_1, 17>();
    var var_1 = var_0;
    global0 = array<Struct_1, 17>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1530f, -180f))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(120f)) * _wgslsmith_f_op_f32(1088f * 831f)), -1645f))));
    return ~(-(~(-_wgslsmith_add_vec2_i32(arg_0.zw, arg_0.yx))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = 1i;
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(3721i, 1i), func_3(vec4<i32>(arg_2.c.d.x, -14048i, arg_2.a.d.x, arg_2.a.a.x), vec4<u32>(arg_2.c.e.b, u_input.b, 22402u, arg_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.a * arg_2.a.b.a)), _wgslsmith_add_u32(abs(51039u), arg_1), max(arg_2.c.b.d, arg_2.c.e.e.x), max(~arg_2.c.e.e.x, arg_0.x), select(_wgslsmith_div_vec2_u32(arg_2.e.e, vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(u_input.b, arg_2.d), arg_2.c.c)), false, _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(2147483647i, 16862i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.d.x, arg_2.c.a.x, 0i, 25412i), vec4<i32>(arg_2.a.d.x, arg_2.c.d.x, arg_2.a.d.x, arg_2.c.d.x)), 1i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.a)), 7094u, abs(55827u), 4294967295u, arg_2.a.e.e)), !arg_2.b, Struct_2(-arg_2.a.d, Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.a.e.a)), arg_1, 1u, 0u, _wgslsmith_add_vec2_u32(max(arg_2.c.b.e, vec2<u32>(4294967295u, 42264u)), _wgslsmith_add_vec2_u32(arg_0.zw, arg_2.c.b.e))), all(!select(vec4<bool>(arg_2.c.c, false, arg_2.a.c, true), vec4<bool>(false, false, arg_2.c.c, true), vec4<bool>(false, arg_2.b.x, false, arg_2.c.c))), arg_2.a.a, Struct_1(_wgslsmith_f_op_f32(round(1739f)), u_input.b, select(_wgslsmith_clamp_u32(arg_1, 1u, 33898u), 1u, arg_2.e.a == 453f), arg_0.x, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.yy, vec2<u32>(1u, arg_0.x), vec2<u32>(21688u, 4294967295u)), ~arg_2.a.b.e))), 19148u, global0[_wgslsmith_index_u32(u_input.b, 17u)]);
    let var_2 = Struct_1(arg_2.a.e.a, arg_1, select(~4294967295u, abs(1u), ((var_1.a.c & var_1.a.c) || true) | any(select(vec3<bool>(arg_2.a.c, var_1.a.c, arg_2.c.c), var_1.b, vec3<bool>(true, arg_2.b.x, false)))), reverseBits(max(1u, min(_wgslsmith_sub_u32(u_input.b, 89156u), arg_2.e.c))), arg_0.xw);
    var var_3 = arg_2.a;
    var_3 = var_1.c;
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    let var_0 = all(select(!select(vec4<bool>(arg_0.a.c, false, arg_2.c.c, true), vec4<bool>(arg_1.c, arg_0.c.c, arg_1.c, true), vec4<bool>(arg_0.c.c, arg_2.a.c, false, true)), !(!(!vec4<bool>(false, true, true, arg_2.b.x))), any(!select(vec4<bool>(false, arg_0.c.c, arg_2.b.x, true), vec4<bool>(arg_1.c, arg_1.c, true, arg_2.b.x), vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_2.c.c)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.a * -2863f), _wgslsmith_f_op_f32(arg_3.a + -753f), _wgslsmith_f_op_f32(f32(-1f) * -1054f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(684f, arg_2.a.b.a, arg_3.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a, -418f, arg_1.e.a) + vec3<f32>(arg_1.b.a, -1566f, -1117f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.b.a, -843f, 184f), vec3<f32>(arg_2.a.b.a, arg_1.b.a, arg_3.a)))), arg_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, 2336f, -993f))))), arg_2.b));
    let var_2 = select(_wgslsmith_sub_vec2_u32(arg_3.e, firstTrailingBit(arg_0.a.e.e)), ~(~((arg_1.b.e | arg_2.c.b.e) << (vec2<u32>(arg_3.c, 0u) % vec2<u32>(32u)))), select(!(!(!vec2<bool>(false, var_0))), arg_2.b.yx, arg_0.a.a.x > 1i));
    global0 = array<Struct_1, 17>();
    let var_3 = -2147483647i;
    return Struct_3(Struct_2(select(vec2<i32>(-1i, arg_0.c.a.x & arg_1.d.x), vec2<i32>(reverseBits(var_3), firstTrailingBit(arg_1.d.x)), 51470i <= min(0i, arg_1.d.x)), arg_3, arg_2.a.c, ~arg_2.a.d >> (((arg_3.e ^ var_2) & arg_3.e) % vec2<u32>(32u)), Struct_1(1000f, arg_3.c << (~arg_3.b % 32u), 0u, (arg_3.c >> (arg_1.b.e.x % 32u)) & ~3894u, ~vec2<u32>(arg_0.a.b.e.x, var_2.x))), vec3<bool>(!(!arg_2.b.x && false), true, !(_wgslsmith_mult_u32(1905u, u_input.b) <= countOneBits(36053u))), Struct_2(reverseBits(arg_0.c.a), global0[_wgslsmith_index_u32(~(~u_input.b) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(55608u, arg_2.a.e.d, 116u, arg_1.e.d), vec4<u32>(4294967295u, 4294967295u, arg_2.c.b.e.x, 51192u)), 17u)], (-1i >> (_wgslsmith_dot_vec2_u32(arg_1.b.e, vec2<u32>(21752u, arg_1.e.b)) % 32u)) < 43320i, arg_1.a, Struct_1(-173f, ~_wgslsmith_mult_u32(arg_0.d, arg_2.c.b.d), var_2.x, _wgslsmith_add_u32(16939u, var_2.x) >> (arg_3.e.x % 32u), arg_0.e.e)), 0u, arg_2.a.e);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = abs(vec4<i32>(~arg_0.c.a.x, firstTrailingBit(73139i), -arg_3.a.d.x, ~(~(-45529i))));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(33293u, arg_0.c.e.b), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 64420u, arg_3.a.b.c) & _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.e.b, arg_1.b.e.x, 14750u), vec3<u32>(0u, 135390u, arg_0.d), vec3<u32>(arg_0.e.c, arg_1.b.b, arg_3.d)), ~vec3<u32>(arg_1.b.c, 0u, arg_1.e.e.x)), vec3<u32>(1u, 18047u, func_2(select(vec4<u32>(64606u, 4294967295u, 22356u, u_input.a), vec4<u32>(0u, arg_1.b.c, 35592u, 30806u), arg_0.c.c), 4294967295u, func_4(arg_3, arg_3.c, Struct_3(arg_3.c, arg_3.b, arg_3.c, 22331u, global0[_wgslsmith_index_u32(60577u, 17u)]), arg_1.b)).e.d)), ~arg_1.b.d);
    global0 = array<Struct_1, 17>();
    return func_2(vec4<u32>(arg_3.e.c, arg_3.d, 0u, _wgslsmith_mult_u32(max(arg_0.d << (1u % 32u), firstTrailingBit(var_1.x)), 1u)), 17428u, Struct_3(func_4(Struct_3(Struct_2(arg_3.a.a, Struct_1(1040f, arg_3.d, 24990u, u_input.b, vec2<u32>(0u, var_1.x)), arg_3.b.x, vec2<i32>(-25i, -2147483647i), Struct_1(arg_3.a.b.a, arg_0.a.e.d, 0u, 0u, vec2<u32>(0u, u_input.a))), !vec3<bool>(arg_3.b.x, true, arg_3.a.c), Struct_2(arg_1.a, arg_0.a.b, arg_0.b.x, vec2<i32>(arg_3.a.d.x, -50879i), Struct_1(-866f, 14474u, arg_3.d, 77601u, arg_0.a.b.e)), _wgslsmith_clamp_u32(arg_3.d, 4294967295u, 1u), Struct_1(-1096f, 4294967295u, 81597u, 4294967295u, vec2<u32>(1u, var_1.x))), Struct_2(vec2<i32>(arg_1.a.x, var_0.x), Struct_1(-133f, 0u, 1u, arg_0.c.e.d, vec2<u32>(var_1.x, arg_0.e.b)), true, -vec2<i32>(var_0.x, var_0.x), func_2(vec4<u32>(20799u, var_1.x, 31944u, 64365u), arg_3.d, Struct_3(arg_1, vec3<bool>(arg_1.c, arg_2, true), arg_0.c, 9094u, global0[_wgslsmith_index_u32(1u, 17u)])).c.e), func_4(func_4(Struct_3(arg_0.a, arg_0.b, arg_1, arg_1.e.d, arg_3.c.b), arg_0.c, arg_0, Struct_1(arg_1.b.a, 1013u, 0u, arg_1.b.b, vec2<u32>(arg_3.d, 1u))), func_2(vec4<u32>(21714u, 37800u, arg_1.b.d, u_input.b), 30534u, arg_3).c, func_4(Struct_3(Struct_2(vec2<i32>(0i, 1i), arg_1.e, false, arg_0.c.d, global0[_wgslsmith_index_u32(arg_3.a.b.d, 17u)]), arg_3.b, Struct_2(vec2<i32>(arg_0.a.a.x, arg_1.a.x), Struct_1(arg_1.b.a, var_1.x, arg_1.e.d, 4294967295u, arg_0.a.b.e), false, vec2<i32>(arg_0.c.d.x, -2147483647i), global0[_wgslsmith_index_u32(arg_1.e.e.x, 17u)]), 0u, Struct_1(arg_1.b.a, arg_3.a.e.c, 8635u, 24632u, arg_1.b.e)), Struct_2(vec2<i32>(arg_3.a.d.x, arg_3.c.d.x), arg_3.e, true, arg_3.c.d, global0[_wgslsmith_index_u32(var_1.x, 17u)]), Struct_3(arg_1, arg_0.b, arg_1, 9734u, arg_0.e), Struct_1(arg_0.e.a, u_input.a, 42511u, var_1.x, vec2<u32>(arg_1.b.d, arg_3.e.e.x))), Struct_1(arg_1.e.a, var_1.x, arg_3.c.e.d, arg_3.e.b, vec2<u32>(var_1.x, 0u))), arg_1.e).a, arg_3.b, func_4(arg_3, func_2(select(vec4<u32>(arg_1.b.d, 64912u, 0u, arg_0.a.b.d), vec4<u32>(arg_3.e.d, 12808u, arg_1.b.d, arg_3.c.b.c), vec4<bool>(arg_3.a.c, false, false, arg_0.c.c)), ~arg_0.e.e.x, arg_0).a, func_2(countOneBits(vec4<u32>(arg_3.a.e.e.x, 0u, arg_1.b.e.x, 120392u)), arg_1.e.b << (u_input.a % 32u), func_2(vec4<u32>(arg_0.a.e.b, arg_0.e.b, 12978u, arg_1.b.e.x), 41958u, arg_0)), func_2(vec4<u32>(arg_3.c.e.e.x, var_1.x, arg_3.e.d, 0u) >> (vec4<u32>(93865u, 133324u, arg_1.e.e.x, 9088u) % vec4<u32>(32u)), ~1u, arg_0).a.b).a, _wgslsmith_mod_u32(func_4(Struct_3(arg_0.c, vec3<bool>(arg_2, arg_3.c.c, false), arg_1, arg_1.b.b, global0[_wgslsmith_index_u32(0u, 17u)]), func_4(Struct_3(Struct_2(vec2<i32>(18114i, -41625i), global0[_wgslsmith_index_u32(1u, 17u)], arg_2, vec2<i32>(36544i, 59833i), Struct_1(arg_0.c.b.a, var_1.x, 1u, u_input.a, var_1.zz)), arg_0.b, Struct_2(vec2<i32>(arg_3.a.a.x, 5010i), Struct_1(arg_3.c.b.a, 0u, 4294967295u, arg_1.e.e.x, vec2<u32>(arg_3.e.e.x, arg_1.e.e.x)), arg_3.a.c, vec2<i32>(arg_3.a.d.x, arg_0.a.d.x), arg_1.e), arg_1.e.b, arg_1.e), Struct_2(arg_0.a.a, Struct_1(arg_0.e.a, arg_3.c.b.d, 4294967295u, 0u, vec2<u32>(u_input.a, u_input.a)), true, vec2<i32>(var_0.x, arg_3.a.d.x), arg_0.a.b), Struct_3(Struct_2(vec2<i32>(arg_0.c.a.x, arg_1.a.x), arg_0.a.e, false, vec2<i32>(arg_3.c.d.x, arg_1.d.x), Struct_1(arg_1.b.a, u_input.a, 1u, 4294967295u, vec2<u32>(var_1.x, 0u))), arg_0.b, arg_0.a, 35758u, Struct_1(arg_3.a.b.a, 35273u, arg_0.a.e.e.x, 72257u, arg_3.a.e.e)), arg_1.b).c, func_4(Struct_3(arg_3.c, arg_3.b, Struct_2(arg_3.a.a, arg_1.b, false, arg_3.c.a, Struct_1(arg_0.c.b.a, u_input.a, 26376u, var_1.x, var_1.yy)), arg_1.b.c, Struct_1(-1000f, arg_0.e.b, arg_3.c.e.d, 1u, arg_1.b.e)), arg_0.a, Struct_3(arg_3.a, arg_3.b, Struct_2(var_0.xx, Struct_1(arg_0.c.b.a, 21063u, arg_1.e.d, 80395u, arg_0.a.e.e), true, var_0.yy, Struct_1(arg_1.e.a, arg_1.b.d, 33740u, arg_1.b.b, arg_3.e.e)), 1u, Struct_1(arg_0.c.e.a, 10666u, 0u, arg_1.b.d, vec2<u32>(1u, 99697u))), Struct_1(2519f, 1u, arg_3.a.b.c, arg_1.b.d, vec2<u32>(4294967295u, arg_1.b.b))), func_2(vec4<u32>(4294967295u, var_1.x, 1u, 4294967295u), 69897u, Struct_3(Struct_2(vec2<i32>(arg_3.c.d.x, arg_1.d.x), arg_0.a.e, arg_1.c, arg_3.a.d, Struct_1(arg_1.b.a, var_1.x, 0u, var_1.x, arg_1.e.e)), arg_3.b, Struct_2(vec2<i32>(var_0.x, -2147483647i), global0[_wgslsmith_index_u32(arg_3.e.e.x, 17u)], false, vec2<i32>(arg_0.c.d.x, 4798i), Struct_1(1389f, 92840u, 9100u, arg_3.d, var_1.yx)), arg_1.b.d, Struct_1(arg_1.e.a, arg_0.d, 1u, var_1.x, arg_0.e.e))).c.e).e.d, ~(~var_1.x)), arg_0.e)).a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_2(select(select(vec2<i32>(_wgslsmith_div_i32(3575i, -1i), func_1(Struct_2(vec2<i32>(2147483647i, -1i), global0[_wgslsmith_index_u32(57571u, 17u)], false, vec2<i32>(-77751i, -52296i), Struct_1(-1779f, u_input.a, u_input.b, 0u, vec2<u32>(u_input.a, u_input.a))), vec4<f32>(-878f, 1000f, 1000f, -412f), vec3<bool>(false, false, true), vec3<i32>(12184i, 1i, 1i))), countOneBits(-vec2<i32>(63989i, 52757i)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec2_i32(min(vec2<i32>(-2147483647i, -2147483647i), reverseBits(vec2<i32>(-2147483647i, 6550i))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 18239i, 3943i, -1i), vec4<i32>(40218i, 2147483647i, 47681i, -22133i)), _wgslsmith_add_i32(-5878i, 17926i))), vec2<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(242f - -855f))), firstTrailingBit(0u) & 4294967295u, ~20626u, 4294967295u, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.a, u_input.a), false), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 71902u), vec2<u32>(u_input.b, 1202u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 29852u), vec2<u32>(u_input.a, 26514u)))), true, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_add_i32(-22813i, 5115i), ~(-2147483647i)))), func_5(func_4(func_2(select(vec4<u32>(11845u, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 7484u, u_input.b, u_input.a), vec4<bool>(false, true, false, false)), 0u, Struct_3(Struct_2(vec2<i32>(1i, 9723i), Struct_1(1290f, u_input.a, u_input.b, u_input.b, vec2<u32>(0u, u_input.b)), false, vec2<i32>(2147483647i, 2147483647i), Struct_1(864f, 0u, 77654u, u_input.a, vec2<u32>(u_input.a, u_input.a))), vec3<bool>(false, true, true), Struct_2(vec2<i32>(-1i, 31080i), global0[_wgslsmith_index_u32(u_input.b, 17u)], true, vec2<i32>(6409i, -6559i), Struct_1(350f, u_input.b, 9847u, 48437u, vec2<u32>(4294967295u, 0u))), 4294967295u, global0[_wgslsmith_index_u32(52853u, 17u)])), Struct_2(reverseBits(vec2<i32>(-1i, -17945i)), func_2(vec4<u32>(4294967295u, u_input.b, 62602u, 4294967295u), u_input.b, Struct_3(Struct_2(vec2<i32>(-12276i, -11476i), Struct_1(171f, 4198u, u_input.b, 37159u, vec2<u32>(u_input.b, u_input.a)), false, vec2<i32>(-4048i, -2147483647i), global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(false, true, false), Struct_2(vec2<i32>(0i, 1i), Struct_1(-972f, u_input.a, u_input.b, 1u, vec2<u32>(12415u, u_input.a)), false, vec2<i32>(-2147483647i, 2147483647i), Struct_1(673f, 22496u, 13036u, u_input.a, vec2<u32>(39293u, u_input.b))), 47978u, Struct_1(-375f, 38765u, u_input.b, u_input.a, vec2<u32>(1u, u_input.a)))).c.e, all(vec4<bool>(true, true, false, true)), -vec2<i32>(2147483647i, -9302i), global0[_wgslsmith_index_u32(4294967295u, 17u)]), func_2(~vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), _wgslsmith_sub_u32(0u, u_input.b), func_2(vec4<u32>(58161u, u_input.b, u_input.b, 0u), 42505u, Struct_3(Struct_2(vec2<i32>(8331i, 66719i), global0[_wgslsmith_index_u32(u_input.b, 17u)], false, vec2<i32>(0i, 1i), Struct_1(-155f, 64338u, u_input.b, 1u, vec2<u32>(u_input.a, 34280u))), vec3<bool>(true, false, true), Struct_2(vec2<i32>(-31505i, 2147483647i), global0[_wgslsmith_index_u32(0u, 17u)], false, vec2<i32>(14982i, 1i), global0[_wgslsmith_index_u32(u_input.b, 17u)]), u_input.a, Struct_1(-452f, 47676u, 0u, u_input.b, vec2<u32>(73942u, 4294967295u))))), func_2(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)), u_input.b, func_2(vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.a), u_input.a, Struct_3(Struct_2(vec2<i32>(15516i, -1i), Struct_1(-296f, 23527u, u_input.b, u_input.a, vec2<u32>(u_input.b, 0u)), true, vec2<i32>(0i, 15533i), Struct_1(-1520f, u_input.a, u_input.b, 14460u, vec2<u32>(u_input.a, 0u))), vec3<bool>(false, false, true), Struct_2(vec2<i32>(2147483647i, -29446i), Struct_1(-864f, 2051u, u_input.b, 4294967295u, vec2<u32>(u_input.b, 36542u)), false, vec2<i32>(43382i, -1i), global0[_wgslsmith_index_u32(u_input.b, 17u)]), u_input.b, global0[_wgslsmith_index_u32(u_input.b, 17u)]))).e), Struct_2(-(vec2<i32>(-33492i, -2147483647i) >> (vec2<u32>(64325u, u_input.a) % vec2<u32>(32u))), Struct_1(_wgslsmith_div_f32(-284f, -1259f), 0u, func_2(vec4<u32>(u_input.a, 64851u, 22862u, 35978u), 4294967295u, Struct_3(Struct_2(vec2<i32>(-26283i, -2147483647i), Struct_1(-1000f, 66467u, 40612u, 2997u, vec2<u32>(0u, 0u)), false, vec2<i32>(7777i, 2147483647i), Struct_1(1626f, 1u, 59853u, u_input.a, vec2<u32>(u_input.b, u_input.a))), vec3<bool>(false, true, false), Struct_2(vec2<i32>(-29194i, 2147483647i), Struct_1(1060f, u_input.a, u_input.b, 12052u, vec2<u32>(u_input.a, 4294967295u)), true, vec2<i32>(-2147483647i, -1i), global0[_wgslsmith_index_u32(90499u, 17u)]), u_input.b, global0[_wgslsmith_index_u32(u_input.b, 17u)])).e.c, u_input.a | u_input.a, ~vec2<u32>(4294967295u, u_input.a)), false, -(~vec2<i32>(0i, 63580i)), func_4(func_4(Struct_3(Struct_2(vec2<i32>(-1i, -2147483647i), global0[_wgslsmith_index_u32(u_input.b, 17u)], true, vec2<i32>(2147483647i, -40803i), Struct_1(701f, u_input.a, 23827u, u_input.a, vec2<u32>(86702u, u_input.a))), vec3<bool>(false, true, false), Struct_2(vec2<i32>(1i, -16821i), global0[_wgslsmith_index_u32(77309u, 17u)], true, vec2<i32>(0i, -2147483647i), Struct_1(-511f, 1u, u_input.a, 4294967295u, vec2<u32>(u_input.b, 0u))), 1009u, Struct_1(797f, 22172u, u_input.a, u_input.b, vec2<u32>(u_input.b, 4294967295u))), Struct_2(vec2<i32>(1i, 48462i), Struct_1(669f, u_input.b, 0u, 1u, vec2<u32>(u_input.a, u_input.a)), true, vec2<i32>(1i, -4151i), global0[_wgslsmith_index_u32(u_input.a, 17u)]), Struct_3(Struct_2(vec2<i32>(2147483647i, -3748i), Struct_1(-1000f, 12389u, u_input.a, 0u, vec2<u32>(u_input.a, u_input.b)), false, vec2<i32>(1i, -75229i), Struct_1(377f, u_input.b, 1u, u_input.b, vec2<u32>(u_input.a, u_input.a))), vec3<bool>(true, true, false), Struct_2(vec2<i32>(22495i, 2973i), global0[_wgslsmith_index_u32(u_input.b, 17u)], false, vec2<i32>(-1i, -15240i), Struct_1(-848f, u_input.a, u_input.a, u_input.b, vec2<u32>(0u, u_input.b))), u_input.a, Struct_1(902f, 0u, u_input.a, u_input.a, vec2<u32>(u_input.b, u_input.b))), Struct_1(492f, 0u, 20958u, u_input.b, vec2<u32>(5519u, 4294967295u))), Struct_2(vec2<i32>(-1i, -16021i), Struct_1(-134f, u_input.a, 9123u, u_input.b, vec2<u32>(4294967295u, u_input.b)), true, vec2<i32>(0i, -14344i), Struct_1(827f, 59809u, 10939u, u_input.a, vec2<u32>(u_input.b, 0u))), func_4(Struct_3(Struct_2(vec2<i32>(-2147483647i, 43026i), global0[_wgslsmith_index_u32(1u, 17u)], true, vec2<i32>(48221i, 2147483647i), global0[_wgslsmith_index_u32(u_input.b, 17u)]), vec3<bool>(true, false, true), Struct_2(vec2<i32>(1i, -78808i), global0[_wgslsmith_index_u32(0u, 17u)], false, vec2<i32>(-30325i, 1i), global0[_wgslsmith_index_u32(93315u, 17u)]), 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 17u)]), Struct_2(vec2<i32>(1332i, 21844i), Struct_1(1251f, u_input.a, 0u, 2652u, vec2<u32>(4294967295u, 31880u)), false, vec2<i32>(-1i, -2147483647i), Struct_1(618f, u_input.b, u_input.a, 1u, vec2<u32>(u_input.a, 19854u))), Struct_3(Struct_2(vec2<i32>(28203i, 2147483647i), Struct_1(816f, u_input.a, u_input.a, 4294967295u, vec2<u32>(1u, u_input.a)), true, vec2<i32>(68324i, -1i), global0[_wgslsmith_index_u32(60349u, 17u)]), vec3<bool>(false, true, false), Struct_2(vec2<i32>(-1i, -2147483647i), global0[_wgslsmith_index_u32(u_input.b, 17u)], true, vec2<i32>(-399i, 0i), Struct_1(-892f, 4294967295u, u_input.a, u_input.a, vec2<u32>(4294967295u, 1u))), 0u, Struct_1(-1375f, u_input.a, 4294967295u, 1u, vec2<u32>(u_input.b, u_input.a))), Struct_1(-880f, 0u, u_input.a, 1u, vec2<u32>(u_input.b, u_input.a))), global0[_wgslsmith_index_u32(~67603u, 17u)]).c.e), any(select(func_2(vec4<u32>(4294967295u, 76603u, 47788u, 1u), 12356u, Struct_3(Struct_2(vec2<i32>(-1i, -28606i), Struct_1(-465f, u_input.a, 56432u, u_input.a, vec2<u32>(4294967295u, 4294967295u)), false, vec2<i32>(-22616i, 2147483647i), Struct_1(539f, u_input.a, u_input.a, 97324u, vec2<u32>(u_input.b, u_input.a))), vec3<bool>(true, true, false), Struct_2(vec2<i32>(-2147483647i, -10911i), Struct_1(-814f, 1u, u_input.a, u_input.a, vec2<u32>(1u, u_input.b)), false, vec2<i32>(-72955i, -2147483647i), global0[_wgslsmith_index_u32(u_input.b, 17u)]), 1u, global0[_wgslsmith_index_u32(u_input.b, 17u)])).b, func_4(Struct_3(Struct_2(vec2<i32>(0i, -17569i), global0[_wgslsmith_index_u32(1u, 17u)], false, vec2<i32>(2147483647i, 0i), global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec3<bool>(false, false, false), Struct_2(vec2<i32>(0i, -53689i), global0[_wgslsmith_index_u32(u_input.b, 17u)], false, vec2<i32>(2147483647i, -4861i), global0[_wgslsmith_index_u32(54072u, 17u)]), 4294967295u, Struct_1(155f, u_input.b, 17324u, 0u, vec2<u32>(u_input.b, 41683u))), Struct_2(vec2<i32>(2147483647i, 17415i), global0[_wgslsmith_index_u32(u_input.a, 17u)], false, vec2<i32>(-27081i, -2147483647i), Struct_1(-396f, u_input.a, u_input.b, u_input.b, vec2<u32>(u_input.a, u_input.b))), Struct_3(Struct_2(vec2<i32>(-1i, 8724i), global0[_wgslsmith_index_u32(u_input.b, 17u)], true, vec2<i32>(42580i, -1i), Struct_1(1230f, u_input.b, 4294967295u, u_input.a, vec2<u32>(u_input.a, 67649u))), vec3<bool>(true, false, true), Struct_2(vec2<i32>(-8421i, 61017i), Struct_1(304f, u_input.b, 7702u, 40511u, vec2<u32>(4294967295u, 0u)), false, vec2<i32>(-1i, 1i), Struct_1(292f, u_input.a, u_input.a, u_input.a, vec2<u32>(u_input.b, 4294967295u))), 74234u, global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(10403u, 17u)]).b, func_2(vec4<u32>(u_input.b, 0u, 0u, 3174u), 25013u, Struct_3(Struct_2(vec2<i32>(-10518i, -17180i), global0[_wgslsmith_index_u32(4294967295u, 17u)], false, vec2<i32>(2147483647i, 1i), global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<bool>(true, true, false), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(-328f, u_input.a, u_input.a, u_input.a, vec2<u32>(0u, u_input.b)), false, vec2<i32>(3300i, -118237i), Struct_1(-1000f, u_input.a, 25259u, u_input.b, vec2<u32>(u_input.b, u_input.a))), u_input.a, global0[_wgslsmith_index_u32(31693u, 17u)])).a.c)), Struct_3(Struct_2(-vec2<i32>(25039i, -1i), func_2(vec4<u32>(u_input.a, u_input.a, 36431u, u_input.b), 4294967295u, Struct_3(Struct_2(vec2<i32>(-21662i, -1i), Struct_1(1290f, u_input.a, u_input.b, 19940u, vec2<u32>(u_input.a, 17443u)), false, vec2<i32>(8982i, -1i), Struct_1(-1819f, u_input.a, 1u, u_input.a, vec2<u32>(u_input.b, u_input.a))), vec3<bool>(true, true, true), Struct_2(vec2<i32>(9743i, 0i), Struct_1(-1062f, u_input.b, 46608u, 0u, vec2<u32>(u_input.a, 46809u)), false, vec2<i32>(-30084i, -360i), Struct_1(1948f, 37225u, 1666u, 0u, vec2<u32>(u_input.b, u_input.a))), u_input.b, Struct_1(704f, u_input.b, u_input.b, u_input.a, vec2<u32>(1u, u_input.a)))).c.e, true, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 13872i), vec2<i32>(9967i, -16663i)), Struct_1(1292f, 1u, u_input.a, 19542u, vec2<u32>(50940u, 0u))), vec3<bool>(true, true, true), Struct_2(vec2<i32>(1i, 1i), func_2(vec4<u32>(u_input.b, u_input.a, u_input.b, 24314u), u_input.a, Struct_3(Struct_2(vec2<i32>(2147483647i, 4822i), global0[_wgslsmith_index_u32(0u, 17u)], false, vec2<i32>(0i, 0i), Struct_1(-526f, 0u, 3337u, u_input.b, vec2<u32>(u_input.a, 1u))), vec3<bool>(true, false, true), Struct_2(vec2<i32>(-16500i, 6379i), global0[_wgslsmith_index_u32(u_input.a, 17u)], false, vec2<i32>(0i, 49512i), global0[_wgslsmith_index_u32(u_input.b, 17u)]), u_input.a, global0[_wgslsmith_index_u32(u_input.b, 17u)])).a.e, all(vec4<bool>(false, true, true, true)), vec2<i32>(0i, -2147483647i), global0[_wgslsmith_index_u32(1u, 17u)]), ~u_input.a, func_2(max(vec4<u32>(0u, u_input.b, u_input.a, 47954u), vec4<u32>(1u, u_input.a, 44265u, u_input.b)), ~u_input.a, Struct_3(Struct_2(vec2<i32>(-1i, 1i), global0[_wgslsmith_index_u32(u_input.b, 17u)], true, vec2<i32>(43300i, 16641i), global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<bool>(false, true, true), Struct_2(vec2<i32>(10847i, -2147483647i), global0[_wgslsmith_index_u32(0u, 17u)], false, vec2<i32>(-38584i, 32562i), Struct_1(-929f, 0u, u_input.b, 12625u, vec2<u32>(78547u, 4294967295u))), 1u, Struct_1(973f, u_input.b, 1u, u_input.b, vec2<u32>(0u, 11106u)))).c.b)));
    let var_1 = var_0.d.x;
    var_0 = Struct_2(var_0.a, global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_0.b.e), u_input.b))), 17u)], _wgslsmith_f_op_f32(var_0.b.a * var_0.b.a) <= var_0.e.a, vec2<i32>(func_3(max(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 1i, 2437i), vec4<i32>(var_0.a.x, var_0.a.x, -30796i, var_0.a.x)), ~vec4<i32>(var_0.a.x, var_0.d.x, var_0.a.x, 3506i)), ~reverseBits(vec4<u32>(var_0.b.c, 1u, 41992u, var_0.b.b))).x, ~var_0.a.x), var_0.b);
    var_0 = Struct_2(var_0.d, var_0.e, 1u < (u_input.a << (var_0.e.e.x % 32u)), var_0.a, global0[_wgslsmith_index_u32(u_input.b << (u_input.a % 32u), 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-1216f)), var_0.d.x, ~vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(23670u, 4294967295u, 53217u, var_0.b.c) & vec4<u32>(94592u, 126401u, u_input.a, 8462u), vec4<u32>(44238u, var_0.e.b, var_0.b.e.x, var_0.e.e.x)), abs(1798u) >> (var_0.b.b % 32u), _wgslsmith_mod_u32(var_0.b.d, var_0.e.c) | ~var_0.e.d));
}

