struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(754f, 364f), vec2<f32>(1538f, 578f), vec2<f32>(-633f, 1240f), vec2<f32>(-275f, -983f), vec2<f32>(2706f, -1000f), vec2<f32>(688f, 201f), vec2<f32>(-961f, 632f), vec2<f32>(319f, -1408f), vec2<f32>(475f, 1343f), vec2<f32>(239f, -469f), vec2<f32>(-155f, 1808f), vec2<f32>(1665f, 590f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_u32(arg_0, vec4<u32>(4294967295u, ~firstLeadingBit(arg_0.x), abs(_wgslsmith_mult_u32(~4294967295u, 43197u | u_input.b.x)), _wgslsmith_sub_u32(0u >> (arg_0.x % 32u), u_input.b.x)));
    let var_1 = firstLeadingBit(~(~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 24931u), arg_0.x & 15185u, u_input.b.x & 4294967295u)));
    var_0 = abs(_wgslsmith_div_vec4_u32(arg_0, vec4<u32>(_wgslsmith_add_u32(1u, var_1.x), ~1u, ~reverseBits(var_0.x), ~(~arg_0.x))));
    var var_2 = u_input.d & u_input.c;
    var_2 = vec2<i32>(max(-30389i, countOneBits(u_input.d.x)), -29854i);
    return vec4<u32>(firstLeadingBit(countOneBits(_wgslsmith_add_u32(var_1.x >> (arg_0.x % 32u), _wgslsmith_dot_vec3_u32(u_input.b, var_0.ywy)))), ~(~var_1.x) ^ 1u, ~(u_input.b.x >> (~0u % 32u)), arg_0.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> i32 {
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    global0 = array<vec2<f32>, 12>();
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(func_3(vec4<u32>(2406u, 81948u, u_input.b.x, 1u) | vec4<u32>(41164u, u_input.b.x, 35913u, u_input.b.x)), abs(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 29085u)) >> (select(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(1u, 4294967295u, 27784u, u_input.b.x), vec4<bool>(false, true, true, arg_0)) % vec4<u32>(32u))));
    return -u_input.d.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = ~((countOneBits(32588u) | (u_input.b.x ^ func_3(vec4<u32>(u_input.b.x, 11423u, 0u, u_input.b.x)).x)) << ((_wgslsmith_div_u32(~4294967295u, ~73578u) | u_input.b.x) % 32u));
    global0 = array<vec2<f32>, 12>();
    var_0 = ~(~33644u);
    global0 = array<vec2<f32>, 12>();
    var_0 = 1u;
    return !vec4<bool>(any(select(select(arg_1.b, vec4<bool>(false, true, arg_2.x, arg_2.x), arg_1.b.x), arg_0, !arg_0)), true, select(arg_2.x, true, all(vec3<bool>(true, arg_2.x, arg_0.x))), false);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global0 = array<vec2<f32>, 12>();
    var var_0 = select(func_4(vec4<bool>(arg_1.a, arg_1.a, !arg_2.b.x || arg_2.b.x, true), Struct_2(vec2<u32>(~63143u, abs(1u)), arg_2.b), select(!select(vec2<bool>(arg_2.b.x, arg_2.b.x), vec2<bool>(true, true), false), arg_2.b.yz, vec2<bool>(true, true)), abs(vec4<i32>(func_2(arg_1.a, vec4<f32>(-1385f, -1197f, arg_1.b.x, arg_1.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 12u)], Struct_1(true, arg_1.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, arg_0, u_input.a, u_input.a), vec4<i32>(u_input.d.x, u_input.a, u_input.c.x, u_input.a)), ~arg_0, ~arg_0))), !(!arg_2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.x, arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), arg_1.b.x > _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.x * -1678f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_1.b.x))))));
    var_0 = vec4<bool>(false, false, all(select(!var_0.xy, select(select(var_0.xw, vec2<bool>(arg_1.a, true), var_0.x), select(arg_2.b.yy, arg_2.b.xx, false), func_4(arg_2.b, arg_2, arg_2.b.xw, vec4<i32>(arg_0, arg_0, 1i, arg_0)).xz), vec2<bool>(true, true))), any(vec2<bool>(false, !select(arg_1.a, true, false))));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = -select(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(~(-8445i), _wgslsmith_div_i32(u_input.c.x, -2147483647i)), -38489i, firstTrailingBit(max(-19346i, u_input.d.x))), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2240i, u_input.d.x, 1i, u_input.a), vec4<i32>(u_input.d.x, u_input.d.x, -1322i, -7739i), arg_1.b), -vec4<i32>(27758i, u_input.d.x, -62250i, -44077i)) | vec4<i32>(1i, u_input.a, _wgslsmith_add_i32(2147483647i, u_input.d.x), 71534i), true);
    var var_1 = Struct_2(min(vec2<u32>(arg_0.a.x, reverseBits(_wgslsmith_add_u32(u_input.b.x, arg_0.a.x))), ~vec2<u32>(4294967295u, select(1u, 32555u, arg_1.b.x))), vec4<bool>(false, !(!(!arg_1.b.x)), arg_1.b.x, !arg_0.b.x));
    var var_2 = firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(1u, 5330u) << (select(~arg_2.x, ~arg_1.a.x, true) % 32u), 0u, 1u, var_1.a.x));
    global0 = array<vec2<f32>, 12>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, -921f, -195f, 1000f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(637f, 1613f, 1000f, -595f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2055f, -1354f, 1067f, 1000f), vec4<f32>(1351f, -251f, 1860f, 934f)))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-175f, -863f, 2327f, 1265f), vec4<f32>(-522f, -766f, -239f, -126f))))));
    return !vec4<bool>(arg_0.b.x, var_3.x <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(882f)))), arg_1.b.x, var_1.b.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 269f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, arg_2.b.x)), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) + -1569f), arg_3.b.x)));
    return Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), arg_0.b.x))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = -46535i;
    var var_1 = func_1(u_input.c.x, func_6(func_6(arg_0, func_5(func_1(1i, Struct_1(true, arg_0.b), Struct_2(arg_1.a, vec4<bool>(true, true, false, true))), Struct_2(vec2<u32>(28987u, 1u), arg_1.b), select(vec3<u32>(arg_1.a.x, 63461u, 0u), u_input.b, arg_1.b.zzy)), arg_0, func_6(arg_0, vec4<bool>(true, true, false, arg_2.x), arg_0, arg_0)), !(!arg_1.b), Struct_1(false, _wgslsmith_f_op_vec2_f32(abs(arg_0.b))), func_6(Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(149f, -265f) - vec2<f32>(arg_0.b.x, arg_0.b.x))), func_4(vec4<bool>(arg_1.b.x, false, arg_2.x, arg_0.a), Struct_2(arg_1.a, arg_1.b), !arg_1.b.yz, -vec4<i32>(-29046i, u_input.c.x, -1i, u_input.c.x)), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-135f, arg_0.b.x) - vec2<f32>(arg_0.b.x, -192f))), func_6(Struct_1(true, vec2<f32>(arg_0.b.x, arg_0.b.x)), arg_1.b, arg_0, func_6(arg_0, vec4<bool>(arg_0.a, true, true, arg_1.b.x), Struct_1(arg_1.b.x, global0[_wgslsmith_index_u32(arg_1.a.x, 12u)]), arg_0)))), func_1(-_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.a), 1i ^ u_input.c.x), func_6(func_6(Struct_1(false, arg_0.b), select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), arg_1.b, true), Struct_1(arg_2.x, arg_0.b), arg_0), !arg_1.b, Struct_1(all(arg_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -996f))), arg_0), arg_1));
    var var_2 = true;
    var_1 = arg_1;
    let var_3 = abs(_wgslsmith_div_vec3_i32((-vec3<i32>(25451i, u_input.a, 0i) & (vec3<i32>(1i, u_input.c.x, u_input.d.x) << (u_input.b % vec3<u32>(32u)))) | vec3<i32>(-2147483647i, 32596i, u_input.c.x | -50460i), vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.c.x, 1966i, u_input.a), vec4<i32>(u_input.c.x, -24125i, 2147483647i, u_input.c.x))), u_input.c.x >> ((131477u << (arg_1.a.x % 32u)) % 32u), ~(-27498i << (0u % 32u)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 12>();
    let var_0 = func_7(func_6(Struct_1(true == any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, 894f) * global0[_wgslsmith_index_u32(930u, 12u)]), select(true, false, true)))), select(func_5(Struct_2(u_input.b.xz, vec4<bool>(false, true, true, false)), func_1(18472i, Struct_1(false, vec2<f32>(-626f, 1000f)), Struct_2(u_input.b.yx, vec4<bool>(false, false, true, false))), firstLeadingBit(vec3<u32>(4294967295u, 62173u, 0u))), select(vec4<bool>(true, false, false, false), func_1(-19617i, Struct_1(false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), Struct_2(vec2<u32>(0u, u_input.b.x), vec4<bool>(true, true, true, true))).b, vec4<bool>(true, true, true, true)), any(func_5(Struct_2(u_input.b.xz, vec4<bool>(true, false, false, true)), Struct_2(u_input.b.zz, vec4<bool>(true, false, false, true)), u_input.b))), Struct_1(all(vec4<bool>(true, false, false, false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-681f, -772f) - vec2<f32>(-105f, 231f)), vec2<f32>(-1730f, -3010f)))), Struct_1(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 27963u), vec4<u32>(16476u, 46797u, u_input.b.x, 4294967295u) >> (vec4<u32>(1u, 4294967295u, u_input.b.x, 0u) % vec4<u32>(32u))), 12u)])), func_1(firstTrailingBit(0i), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, -1223f))), func_1(~countOneBits(u_input.a), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1668f, -943f))), func_1(_wgslsmith_mult_i32(-35640i, u_input.d.x), func_6(Struct_1(true, vec2<f32>(385f, -914f)), vec4<bool>(true, true, true, true), Struct_1(true, vec2<f32>(248f, 569f)), Struct_1(false, vec2<f32>(720f, 809f))), Struct_2(u_input.b.yx, vec4<bool>(true, true, true, false))))), select(vec2<bool>(func_1(~u_input.c.x, Struct_1(true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), Struct_2(vec2<u32>(1u, 1u), vec4<bool>(false, false, false, true))).b.x, false), vec2<bool>(true & any(vec4<bool>(false, true, false, true)), !all(vec2<bool>(false, false))), !func_4(vec4<bool>(true, true, true, true), Struct_2(u_input.b.zy, vec4<bool>(true, true, false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, -38689i, -92026i), vec4<i32>(u_input.a, 43556i, -2147483647i, -36196i), vec4<i32>(1i, -18623i, -41998i, -44264i))).x));
    var var_1 = vec4<i32>(3726i, 2147483647i, -2147483647i, 1i);
    let var_2 = func_7(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -555f))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-330f, -1526f)), _wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32((u_input.b.x & 40487u) | var_0.a.x, 12u)]))), Struct_2(~(abs(u_input.b.xz) ^ var_0.a), !func_1(reverseBits(0i), func_6(Struct_1(true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), var_0.b, Struct_1(true, vec2<f32>(-731f, -714f)), Struct_1(true, global0[_wgslsmith_index_u32(4294967295u, 12u)])), var_0).b), !var_0.b.wx);
    var var_3 = !vec4<bool>(false, var_0.b.x | true, true, false);
    let var_4 = _wgslsmith_div_u32(func_7(Struct_1(any(var_0.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1420f), -1463f)), func_1(u_input.d.x, Struct_1(all(var_0.b.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1371f, 167f))), var_0), !(!func_7(Struct_1(var_3.x, global0[_wgslsmith_index_u32(var_2.a.x, 12u)]), var_0, vec2<bool>(var_2.b.x, true)).b.xz)).a.x, ~firstTrailingBit(~_wgslsmith_add_u32(4294967295u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(23380u, 24728u, 83323u, ~15505u), ~vec4<u32>(1u, ~var_2.a.x, 19433u, u_input.b.x)), _wgslsmith_sub_u32(select(0u, var_4, !var_3.x), abs(var_2.a.x)), var_0.a.x, ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(49579u, 4294967295u, u_input.b.x), ~u_input.b) | u_input.b.x));
}

