struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(abs(1024f));
    var var_2 = Struct_3(arg_0, arg_0.a.e.www, arg_0.a, Struct_1(firstTrailingBit((arg_0.d.a | arg_0.a.d) >> (abs(u_input.b.zz) % vec2<u32>(32u))), var_0, countOneBits(vec2<i32>(_wgslsmith_sub_i32(0i, arg_0.a.c.x), ~41940i)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(25980i, arg_0.d.d.x), arg_0.d.a), _wgslsmith_clamp_vec2_i32(arg_0.d.a, select(arg_0.d.c, arg_0.a.d, vec2<bool>(var_0, arg_0.a.b)), vec2<i32>(16109i, arg_0.a.d.x))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_0.a.e.x, 1u, arg_0.b, u_input.a), ~vec4<u32>(0u, 1u, 60052u, 51334u), all(vec4<bool>(var_0, false, false, arg_0.a.b))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.a, 0u), vec4<u32>(arg_0.a.e.x, 1u, 4294967295u, 20139u)))));
    var_2 = Struct_3(arg_0, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.d.e.yww, u_input.b), 1u, 1u), ~(arg_0.d.e.xyw ^ vec3<u32>(arg_0.d.e.x, arg_0.b, var_2.b.x))), ~countOneBits(~vec3<u32>(4294967295u, u_input.c, 1u))), arg_0.a, var_2.c);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, i32(-1i) * -1i, 2147483647i), firstLeadingBit(~(-var_2.c.d.x)) | (i32(-1i) * -18721i));
    return vec2<i32>(_wgslsmith_mod_i32(28102i, _wgslsmith_clamp_i32(-2147483647i, -1i, arg_0.a.d.x) >> (max(4294967295u, var_2.c.e.x) % 32u)) & (i32(-1i) * -(arg_0.d.c.x | 42790i)), var_3);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.a;
    global0 = all(vec4<bool>(true, !(-arg_0.a.x >= var_0.c.x), any(vec3<bool>(any(vec3<bool>(arg_1.a.b, arg_2.c.b, false)), any(vec3<bool>(arg_3.a.b, arg_0.b, false)), true)), any(vec2<bool>(arg_2.a.d.b, arg_3.d.b))));
    let var_1 = 1000f;
    let var_2 = Struct_1(arg_3.d.c, arg_0.b == (~_wgslsmith_clamp_u32(u_input.a, arg_2.d.e.x, 65382u) < 18870u), arg_2.c.a, vec2<i32>(-(arg_3.d.d.x & -1i), var_0.a.x), select(var_0.e, ~_wgslsmith_mult_vec4_u32(arg_1.d.e, var_0.e) | (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, arg_3.b, arg_0.e.x, 66123u), arg_0.e) << (vec4<u32>(4294967295u, 0u, 50419u, u_input.b.x) % vec4<u32>(32u))), arg_2.a.a.b));
    let var_3 = arg_1.d;
    return ~13016u;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(Struct_2(Struct_1(~firstTrailingBit(vec2<i32>(55283i, 23496i)), any(vec2<bool>(true, true)), max(vec2<i32>(2147483647i, 28758i), vec2<i32>(0i, -3328i)), vec2<i32>(_wgslsmith_sub_i32(7445i, -21056i), 1i), vec4<u32>(u_input.a, 4294967295u, 84508u, ~32214u)), func_4(Struct_1(~vec2<i32>(1i, -3370i), true, vec2<i32>(1i, 1i), func_3(Struct_2(Struct_1(vec2<i32>(48014i, 0i), false, vec2<i32>(2147483647i, 34946i), vec2<i32>(43021i, -44710i), vec4<u32>(1u, u_input.a, 41754u, u_input.c)), 17215u, 318f, Struct_1(vec2<i32>(19180i, 46937i), false, vec2<i32>(-15352i, 0i), vec2<i32>(-7312i, -2147483647i), vec4<u32>(67108u, 17528u, u_input.a, 1374u)), 1000f)), vec4<u32>(0u, u_input.c, 20535u, 1u)), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), false, vec2<i32>(-35500i, 1i), vec2<i32>(2147483647i, -2147483647i), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.a)), _wgslsmith_mult_u32(u_input.b.x, u_input.c), -1226f, Struct_1(vec2<i32>(-15417i, 0i), false, vec2<i32>(1i, -63662i), vec2<i32>(-2147483647i, 22200i), vec4<u32>(u_input.b.x, u_input.c, u_input.a, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -832f)), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, -1i), false, vec2<i32>(27424i, 1i), vec2<i32>(60023i, 3143i), vec4<u32>(u_input.c, u_input.b.x, 1u, 1u)), 4294967295u, -2792f, Struct_1(vec2<i32>(-9736i, -47743i), true, vec2<i32>(-1i, -2147483647i), vec2<i32>(39040i, -1i), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 40241u)), 713f), u_input.b, Struct_1(vec2<i32>(2147483647i, 1i), false, vec2<i32>(77650i, 550i), vec2<i32>(-5152i, -4654i), vec4<u32>(u_input.b.x, 2572u, 1u, 25402u)), Struct_1(vec2<i32>(1i, 2147483647i), false, vec2<i32>(1i, -4111i), vec2<i32>(0i, -27842i), vec4<u32>(26897u, 9018u, u_input.a, 31999u))), Struct_2(Struct_1(vec2<i32>(42023i, 625i), true, vec2<i32>(53060i, -2147483647i), vec2<i32>(-5622i, 1i), vec4<u32>(40607u, u_input.c, u_input.c, u_input.b.x)), _wgslsmith_clamp_u32(45268u, u_input.c, 80570u), -985f, Struct_1(vec2<i32>(-36397i, -2147483647i), false, vec2<i32>(20642i, 0i), vec2<i32>(-1i, 0i), vec4<u32>(1u, 1u, u_input.a, 30332u)), _wgslsmith_f_op_f32(f32(-1f) * -603f))), -373f, Struct_1(select(vec2<i32>(1i, 1i), max(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 8275i)), vec2<bool>(true, false)), true, ~vec2<i32>(-49666i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -37987i), vec2<i32>(1i, 1i), max(vec2<i32>(2975i, 2147483647i), vec2<i32>(0i, -4356i))), vec4<u32>(~0u, _wgslsmith_sub_u32(36971u, u_input.a), u_input.b.x, _wgslsmith_sub_u32(u_input.c, u_input.a))), -117f), min(~_wgslsmith_div_vec3_u32(reverseBits(u_input.b), u_input.b), vec3<u32>(22468u ^ _wgslsmith_clamp_u32(u_input.b.x, u_input.a, 78597u), firstLeadingBit(u_input.b.x), 0u & ~u_input.c)), Struct_1(vec2<i32>(abs(~(-67786i)), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, 42954i)), true, vec2<i32>(1i, 1i), vec2<i32>(-2147483647i >> (0u % 32u), -1i), min(vec4<u32>(1u, 14196u << (0u % 32u), ~1u, ~1u), select(reverseBits(vec4<u32>(4294967295u, 0u, u_input.a, u_input.b.x)), vec4<u32>(u_input.c, 4294967295u, u_input.b.x, u_input.c) >> (vec4<u32>(u_input.a, 5630u, 31975u, u_input.b.x) % vec4<u32>(32u)), u_input.a >= u_input.b.x))), Struct_1(firstTrailingBit(~(-vec2<i32>(1i, 2147483647i))), true, abs(vec2<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(-33136i, 1i))), vec2<i32>(0i, _wgslsmith_mod_i32(-2147483647i, -2147483647i)) & -firstTrailingBit(vec2<i32>(1i, 1i)), vec4<u32>(40497u, ~1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) | u_input.b.zz, vec2<u32>(4294967295u, u_input.a)))));
    var_0 = Struct_3(Struct_2(var_0.c, min(~_wgslsmith_add_u32(3911u, var_0.b.x), ~var_0.a.b), _wgslsmith_f_op_f32(floor(217f)), var_0.a.d, var_0.a.c), ~u_input.b, var_0.a.d, var_0.c);
    var_0 = Struct_3(var_0.a, ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.d.e.x, u_input.b.x, 0u), vec3<u32>(4294967295u, 4595u, 1u)), vec3<u32>(22628u, u_input.a, 31703u)), u_input.b), Struct_1(~(-vec2<i32>(19753i, -34566i) >> (vec2<u32>(var_0.b.x, 0u) % vec2<u32>(32u))), true & var_0.c.b, firstTrailingBit(var_0.c.d), var_0.d.a, var_0.d.e), var_0.a.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1243f, var_0.a.e), vec2<f32>(var_0.a.e, -236f)))), vec2<f32>(1f, 1f), select(!vec2<bool>(true, var_0.c.b), vec2<bool>(true, false), var_0.d.b)))));
    global0 = false;
    return -(~_wgslsmith_mod_i32(6397i, ~_wgslsmith_mult_i32(var_0.c.a.x, -21896i)));
}

fn func_5(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_1(arg_0.wy << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), true, arg_0.zy & arg_0.xw, arg_0.xw, min(countOneBits(countOneBits(vec4<u32>(1u, 1u, 94870u, 2343u))), ~countOneBits(~vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u))));
    let var_1 = ~(_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.c, 43268u)), ~(~vec2<u32>(4294967295u, 4294967295u))) ^ u_input.b.xz);
    var var_2 = !any(vec4<bool>(false, !var_0.b, true, var_0.b & var_0.b));
    global0 = false;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, 867f) * vec2<f32>(-427f, 878f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-662f, -1527f) - vec2<f32>(366f, 771f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(743f + _wgslsmith_f_op_f32(ceil(344f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1154f)) * _wgslsmith_f_op_f32(select(-3017f, 758f, false))))));
    return abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.c), _wgslsmith_sub_u32(0u, var_0.e.x), 21451u), vec3<u32>(0u, u_input.c, 6982u) >> (vec3<u32>(var_1.x, var_0.e.x, var_1.x) % vec3<u32>(32u))), var_0.e.x & 1u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool) -> Struct_3 {
    global0 = true;
    let var_0 = countOneBits(_wgslsmith_sub_u32(59578u, u_input.a));
    global0 = all(!(!select(vec4<bool>(false, arg_2, true, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_2), arg_0))) | any(arg_0.yxw);
    let var_1 = vec2<bool>(var_0 != func_5(vec4<i32>(func_2(), max(25526i, -23143i), 22113i, func_3(Struct_2(Struct_1(vec2<i32>(0i, -28316i), false, vec2<i32>(4832i, 0i), vec2<i32>(-34795i, -18246i), vec4<u32>(arg_1.x, 0u, u_input.b.x, u_input.b.x)), arg_1.x, -1319f, Struct_1(vec2<i32>(-9319i, 2147483647i), arg_0.x, vec2<i32>(-1i, -1i), vec2<i32>(-22036i, -8337i), vec4<u32>(4294967295u, u_input.c, 15501u, 1u)), 1077f)).x)), 32260u < _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.c, 15057u, 57862u), vec3<u32>(4294967295u, arg_1.x, 4294967295u)), vec3<u32>(u_input.a, var_0, 1u) >> (vec3<u32>(u_input.b.x, 0u, u_input.c) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 27181u), ~arg_1.yy)));
    global0 = true;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(0i, -2147483647i), ~vec2<i32>(-2147483647i, -20184i)), true, -firstTrailingBit(vec2<i32>(0i, 5506i)), -vec2<i32>(0i, -6583i), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, u_input.b.x, arg_1.x, var_0)), ~vec4<u32>(var_0, 1u, arg_1.x, 23898u))), 19989u, 1f, Struct_1(select(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 31808i), vec2<i32>(-3282i, 2147483647i)), -vec2<i32>(2147483647i, -2147483647i), vec2<bool>(false, arg_2)), true, reverseBits(-vec2<i32>(2147483647i, -2147483647i)), -vec2<i32>(-48419i, 1051i), ~(~vec4<u32>(4294967295u, u_input.b.x, u_input.a, arg_1.x))), _wgslsmith_f_op_f32(1692f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(538f)) * _wgslsmith_f_op_f32(f32(-1f) * -1217f)))), ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.c), vec3<u32>(115103u, arg_1.x, 4294967295u))) | arg_1, Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), countOneBits(-vec2<i32>(16179i, -1i))), false, vec2<i32>(reverseBits(1i), -(~(-1i))), -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(1i, 1i)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 83837u, 4294967295u), ~vec4<u32>(1u, var_0, 0u, u_input.a)) ^ (vec4<u32>(var_0, 4294967295u, 2253u, arg_1.x) >> (~vec4<u32>(u_input.a, var_0, 1u, 67719u) % vec4<u32>(32u)))), Struct_1(vec2<i32>(abs(min(-37091i, -17480i)), select(~29221i, 0i, all(arg_0))), (arg_2 != all(arg_0.wyz)) & var_1.x, abs(reverseBits(~vec2<i32>(41373i, 35502i))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(-34237i, 11124i))), vec4<u32>(~(~14289u), arg_1.x, arg_1.x, ~27615u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), u_input.b, !(!select(true, true, true)));
    global0 = false;
    var var_1 = var_0.a;
    var var_2 = true != any(vec4<bool>((var_0.d.a.x >= var_1.a.c.x) && (true == var_0.d.b), true, var_0.d.b, var_0.c.b));
    var var_3 = func_1(!select(vec4<bool>(false != var_0.a.d.b, var_1.d.b && true, all(vec3<bool>(true, var_1.a.b, true)), true), vec4<bool>(u_input.c < 1u, var_1.a.b, var_0.a.a.b, -73778i > var_0.c.a.x), select(true, any(vec4<bool>(true, var_1.a.b, var_1.d.b, var_0.d.b)), !var_0.c.b)), max(vec3<u32>(var_1.d.e.x, ~_wgslsmith_div_u32(var_1.a.e.x, u_input.a), var_1.a.e.x), _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(11914u, 4294967295u, 39239u), u_input.b), ~max(vec3<u32>(var_1.a.e.x, var_1.a.e.x, 49700u), var_0.c.e.xzz))), any(select(!vec3<bool>(true, var_0.d.b, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.c.b, true), vec3<bool>(true, var_0.a.a.b, var_1.a.b)), select(vec3<bool>(var_1.a.b, var_0.a.a.b, true), vec3<bool>(var_1.a.b, var_0.d.b, false), vec3<bool>(var_0.d.b, false, var_1.d.b)), any(vec3<bool>(var_1.a.b, true, false))), true))).a;
    var var_4 = _wgslsmith_f_op_f32(sign(var_0.a.e));
    var var_5 = !var_3.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(min(~max(vec3<i32>(-1i, var_1.a.a.x, 24870i), vec3<i32>(-12536i, 10054i, 26652i)) ^ vec3<i32>(~(-77411i), 0i, reverseBits(var_0.a.d.c.x)), -vec3<i32>(-2147483647i, -2147483647i, var_3.d.c.x)));
}

