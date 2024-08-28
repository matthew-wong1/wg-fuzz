struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 72236u, 2068u), vec3<u32>(48397u, 4294967295u, 4294967295u), vec3<u32>(64198u, 28687u, 0u), vec3<u32>(32588u, 44790u, 4294967295u), vec3<u32>(34587u, 69783u, 1u), vec3<u32>(0u, 4294967295u, 18543u), vec3<u32>(1u, 48962u, 0u), vec3<u32>(43838u, 0u, 1u), vec3<u32>(49166u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(25193u, 47243u, 0u), vec3<u32>(9658u, 0u, 1u));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1328f)) * -349f), _wgslsmith_f_op_f32(floor(-1144f))))));
    global1 = array<vec3<u32>, 12>();
    let var_1 = !(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), false)));
    var var_2 = _wgslsmith_sub_i32(9970i, -(~(~u_input.d.x)) ^ 86602i);
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(-arg_1.d.a, vec2<i32>(arg_0.x, ~(-1211i & arg_1.d.a.x))));
    return select(arg_0.wz, _wgslsmith_mod_vec2_i32(u_input.d.xy, abs(firstTrailingBit(vec2<i32>(arg_0.x, u_input.d.x)) | u_input.d.xx)), (false && var_1.x) || (any(select(vec4<bool>(false, true, var_1.x, var_1.x), var_1, var_1.x)) & !(!var_1.x)));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_2(Struct_1(func_3(-(u_input.c << (vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u))), Struct_2(Struct_1(u_input.c.yz), ~vec3<i32>(arg_0.x, u_input.d.x, arg_0.x), Struct_1(vec2<i32>(u_input.d.x, 2147483647i)), Struct_1(vec2<i32>(11126i, arg_0.x)), Struct_1(u_input.c.yz)))), max(max(-(~arg_0.wyw), min(-arg_0.zyw, arg_0.yxz)), arg_0.yxx | vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(u_input.c, arg_0), ~u_input.d.x)), Struct_1(arg_0.zw), Struct_1(func_3(~u_input.c, Struct_2(Struct_1(u_input.d.zy), vec3<i32>(-20979i, u_input.d.x, arg_0.x) | arg_0.yxy, Struct_1(vec2<i32>(arg_0.x, -31125i)), Struct_1(vec2<i32>(-42465i, 17516i)), Struct_1(u_input.d.zy)))), Struct_1(select(arg_0.zz >> (vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.c.zx), -vec2<i32>(arg_0.x, arg_0.x)), any(vec2<bool>(false, false)) && true)));
    global0 = -40787i;
    let var_1 = var_0;
    global1 = array<vec3<u32>, 12>();
    var var_2 = var_0.e.a.x;
    return var_1.e.a.x;
}

fn func_1() -> vec2<i32> {
    global0 = u_input.d.x;
    global0 = _wgslsmith_div_i32(func_2(-vec4<i32>(u_input.c.x, _wgslsmith_div_i32(19986i, -1i), -6911i, u_input.d.x)), u_input.d.x);
    var var_0 = Struct_2(Struct_1(select(max(vec2<i32>(-1i, 27731i), u_input.c.ww), u_input.d.yx, select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, false), any(vec3<bool>(true, false, false))))), _wgslsmith_div_vec3_i32(u_input.d, max(u_input.c.ywx, vec3<i32>(u_input.c.x, ~(-11745i), u_input.d.x >> (5360u % 32u)))), Struct_1(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.c.x, 1i)), -vec2<i32>(u_input.d.x, u_input.c.x)) << (~u_input.a.yx % vec2<u32>(32u))), Struct_1(select(u_input.c.xw, _wgslsmith_mod_vec2_i32(u_input.c.xz, vec2<i32>(u_input.d.x, u_input.d.x)) << (vec2<u32>(u_input.b.x, 35207u) % vec2<u32>(32u)), vec2<bool>(true, true))), Struct_1(select(vec2<i32>(u_input.d.x, u_input.c.x) & select(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-46672i, -1i), false), ~_wgslsmith_sub_vec2_i32(u_input.c.zx, vec2<i32>(u_input.c.x, u_input.c.x)), select(all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, true)), u_input.c.x >= 0i))));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_div_i32(var_0.d.a.x, select(u_input.d.x, _wgslsmith_add_i32(-1i, u_input.c.x), true)), 1i));
    var var_2 = Struct_2(var_0.e, vec3<i32>(-(~16193i) >> (firstLeadingBit(select(u_input.a.x, 1u, false)) % 32u), var_0.e.a.x, -2147483647i), var_1, var_0.e, Struct_1(vec2<i32>(var_0.c.a.x, func_2(u_input.c))));
    return _wgslsmith_sub_vec2_i32(-min(~reverseBits(var_0.e.a), vec2<i32>(func_3(vec4<i32>(2147483647i, var_2.e.a.x, var_1.a.x, var_1.a.x), Struct_2(var_2.a, vec3<i32>(var_2.e.a.x, 2147483647i, -22708i), Struct_1(vec2<i32>(-30693i, var_2.b.x)), var_2.a, Struct_1(vec2<i32>(35107i, -31383i)))).x, -2147483647i)), var_1.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = firstLeadingBit(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.a.x, 0u, 16903u), abs(vec4<u32>(u_input.b.x, 11693u, 61973u, 12595u)), all(vec3<bool>(true, true, true))), ~vec4<u32>(0u, 20078u, u_input.b.x, u_input.a.x) << (countOneBits(vec4<u32>(19304u, 4294967295u, 7926u, u_input.b.x)) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(390f, 1586f, 327f, -838f) * vec4<f32>(1000f, 2351f, 1447f, 1023f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(765f, -153f, 341f, 1081f), vec4<f32>(-1627f, 392f, -1565f, 625f), false)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-700f, -1649f, -494f, -1396f), vec4<f32>(859f, 1000f, 1048f, 1460f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 168f, 832f, -1000f))), vec4<f32>(312f, 1480f, -689f, _wgslsmith_f_op_f32(-431f - -1367f))))));
    let var_2 = Struct_1(arg_1.a);
    let var_3 = arg_3.b.x;
    global1 = array<vec3<u32>, 12>();
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_4(firstLeadingBit(u_input.c.yx), arg_0, func_4(reverseBits(-(vec2<i32>(-1196i, -42898i) >> (vec2<u32>(u_input.a.x, 11539u) % vec2<u32>(32u)))), func_4(abs(arg_1.b.xy & vec2<i32>(1i, arg_0.a.x)), arg_1.d, arg_0, Struct_2(func_4(vec2<i32>(3634i, arg_0.a.x), Struct_1(vec2<i32>(-2147483647i, 1i)), Struct_1(vec2<i32>(2147483647i, -5744i)), arg_1).a, select(u_input.d, arg_1.b, true), func_4(arg_0.a, Struct_1(vec2<i32>(u_input.d.x, 11876i)), arg_0, Struct_2(arg_0, vec3<i32>(0i, arg_0.a.x, 2147483647i), arg_1.d, arg_0, Struct_1(vec2<i32>(u_input.d.x, -14085i)))).a, arg_1.d, func_4(u_input.d.yy, arg_1.d, Struct_1(arg_1.a.a), Struct_2(Struct_1(vec2<i32>(16031i, arg_0.a.x)), u_input.d, Struct_1(arg_0.a), Struct_1(vec2<i32>(arg_0.a.x, -17204i)), arg_1.e)).c)).d, Struct_1(-u_input.d.yx), Struct_2(Struct_1(~arg_1.e.a), vec3<i32>(arg_0.a.x, u_input.c.x, 2147483647i), func_4(~arg_0.a, Struct_1(arg_1.d.a), func_4(arg_0.a, Struct_1(u_input.d.yy), arg_0, arg_1).d, func_4(vec2<i32>(30394i, 1i), arg_0, Struct_1(arg_1.c.a), Struct_2(arg_1.d, vec3<i32>(-35604i, arg_0.a.x, 91060i), arg_1.a, Struct_1(arg_0.a), arg_0))).e, func_4(-arg_0.a, Struct_1(arg_0.a), arg_0, func_4(u_input.d.zx, arg_1.d, arg_0, arg_1)).d, func_4(func_3(u_input.c, arg_1), func_4(arg_0.a, Struct_1(vec2<i32>(-59217i, 1i)), arg_0, arg_1).e, func_4(vec2<i32>(-2519i, u_input.d.x), arg_1.c, Struct_1(vec2<i32>(arg_0.a.x, -2147483647i)), Struct_2(Struct_1(arg_0.a), vec3<i32>(arg_0.a.x, -7702i, -4947i), arg_0, Struct_1(vec2<i32>(-61463i, 2147483647i)), Struct_1(vec2<i32>(arg_1.c.a.x, arg_1.a.a.x)))).a, arg_1).c)).a, arg_1);
    global0 = -1i & (~_wgslsmith_add_i32(i32(-1i) * -33516i, -u_input.c.x) ^ (-arg_1.c.a.x >> (u_input.b.x % 32u)));
    var var_1 = vec4<u32>(5598u, 76887u, 7962u, 1u);
    var_1 = ~((firstLeadingBit(vec4<u32>(var_1.x, 1u, 1u, 4294967295u) ^ vec4<u32>(u_input.a.x, u_input.a.x, var_1.x, 48252u)) | vec4<u32>(max(49508u, 45868u), ~u_input.b.x, min(u_input.a.x, 4294967295u), u_input.a.x)) >> (~min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 13254u, u_input.a.x, 76996u), vec4<u32>(56901u, 35024u, var_1.x, u_input.a.x)), reverseBits(vec4<u32>(4294967295u, 35113u, 4918u, 4294967295u))) % vec4<u32>(32u)));
    var_0 = func_4(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(var_0.d.a.x, arg_1.e.a.x) << (u_input.b % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d.x, var_0.e.a.x), -35394i), -32102i), _wgslsmith_mod_vec2_i32(abs(arg_0.a) | _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, arg_1.b.x), u_input.d.yy), arg_1.c.a)), func_4(~_wgslsmith_mod_vec2_i32(arg_1.c.a, ~vec2<i32>(u_input.d.x, u_input.c.x)), func_4(_wgslsmith_mod_vec2_i32(max(arg_0.a, vec2<i32>(arg_1.d.a.x, 0i)), _wgslsmith_sub_vec2_i32(var_0.e.a, vec2<i32>(var_0.d.a.x, 3057i))), arg_1.e, arg_1.d, arg_1).a, Struct_1(func_4(-var_0.a.a, var_0.e, func_4(vec2<i32>(u_input.c.x, arg_0.a.x), Struct_1(vec2<i32>(41949i, var_0.a.a.x)), Struct_1(var_0.e.a), Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, arg_1.e.a.x)), vec3<i32>(12696i, -11071i, -1i), Struct_1(var_0.e.a), arg_0, arg_0)).c, func_4(var_0.a.a, Struct_1(vec2<i32>(arg_1.d.a.x, var_0.c.a.x)), arg_1.e, Struct_2(Struct_1(vec2<i32>(u_input.d.x, arg_1.e.a.x)), var_0.b, Struct_1(var_0.c.a), Struct_1(var_0.b.yy), arg_1.a))).e.a), func_4(u_input.c.wy, var_0.c, func_4(vec2<i32>(-2147483647i, var_0.c.a.x) << (var_1.wx % vec2<u32>(32u)), func_4(arg_1.b.xz, var_0.c, var_0.e, Struct_2(var_0.c, vec3<i32>(-1i, 17521i, -16964i), arg_1.a, arg_0, Struct_1(var_0.b.yz))).d, func_4(vec2<i32>(arg_0.a.x, 14986i), Struct_1(u_input.d.zz), Struct_1(u_input.d.xz), arg_1).a, arg_1).d, Struct_2(arg_0, reverseBits(u_input.c.wyw), var_0.c, var_0.d, arg_1.a))).a, Struct_1(func_3(~firstTrailingBit(vec4<i32>(u_input.d.x, -2147483647i, 19733i, arg_1.c.a.x)), func_4(vec2<i32>(arg_0.a.x, var_0.d.a.x), var_0.d, func_4(u_input.c.zx, arg_1.e, Struct_1(vec2<i32>(1i, -1i)), arg_1).a, Struct_2(arg_1.d, u_input.d, Struct_1(u_input.c.zx), arg_0, arg_0)))), func_4(_wgslsmith_mod_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.e.a.x, 23966i), vec2<i32>(arg_0.a.x, 1i)), vec2<i32>(~(-2147483647i), arg_1.e.a.x)), func_4(~(vec2<i32>(arg_0.a.x, 1i) | vec2<i32>(var_0.e.a.x, arg_1.c.a.x)), Struct_1(vec2<i32>(-2147483647i, -2147483647i)), func_4(vec2<i32>(arg_0.a.x, var_0.c.a.x), func_4(vec2<i32>(var_0.d.a.x, -13495i), Struct_1(vec2<i32>(20132i, 2147483647i)), var_0.a, Struct_2(Struct_1(arg_0.a), var_0.b, arg_1.d, Struct_1(arg_1.c.a), Struct_1(var_0.a.a))).a, Struct_1(vec2<i32>(arg_0.a.x, 0i)), arg_1).d, arg_1).d, Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.d.a.x, arg_0.a.x), vec2<i32>(-14029i, -10512i))), arg_1));
    return func_4(~(-arg_0.a), var_0.d, Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(43598i, 9110i), arg_1.c.a) << (~vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), u_input.d.zz)), arg_1).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(firstTrailingBit(~(~vec2<i32>(19916i, 98i)))), func_4(func_1(), Struct_1(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c.x, 0i), max(vec2<i32>(u_input.d.x, u_input.d.x), u_input.c.wz))), Struct_1(u_input.d.xz), Struct_2(Struct_1(~vec2<i32>(u_input.d.x, 2147483647i)), -vec3<i32>(u_input.c.x, -1i, 2147483647i), Struct_1(u_input.c.zw), Struct_1(u_input.d.zz & u_input.d.xx), Struct_1(u_input.c.ww))));
    let var_1 = func_4(_wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(-u_input.c.yw, vec2<i32>(17858i, -12870i), ~u_input.d.yx), ~_wgslsmith_div_vec2_i32(u_input.d.yz, ~vec2<i32>(var_0.a.x, 0i))), Struct_1(_wgslsmith_clamp_vec2_i32(var_0.a, -u_input.d.yx, abs(~vec2<i32>(1i, var_0.a.x)))), Struct_1(min(vec2<i32>(-4663i, -118922i), -vec2<i32>(u_input.c.x, var_0.a.x))), func_4(~firstLeadingBit(u_input.d.zz), Struct_1(_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, -4063i), vec2<i32>(u_input.c.x, -4846i), vec2<bool>(true, false)), -u_input.c.wy)), func_5(func_4(~vec2<i32>(u_input.d.x, 0i), Struct_1(vec2<i32>(-6046i, 0i)), Struct_1(vec2<i32>(2147483647i, 1i)), func_4(var_0.a, Struct_1(vec2<i32>(2147483647i, var_0.a.x)), Struct_1(vec2<i32>(u_input.d.x, u_input.c.x)), Struct_2(Struct_1(vec2<i32>(-2147483647i, var_0.a.x)), vec3<i32>(var_0.a.x, 1i, u_input.c.x), Struct_1(vec2<i32>(-16440i, var_0.a.x)), Struct_1(u_input.d.xy), Struct_1(vec2<i32>(u_input.d.x, 0i))))).c, func_4(~var_0.a, Struct_1(u_input.c.wz), func_5(Struct_1(vec2<i32>(-2147483647i, u_input.c.x)), Struct_2(Struct_1(u_input.c.xz), vec3<i32>(4542i, 1i, 0i), Struct_1(vec2<i32>(34958i, 1i)), Struct_1(vec2<i32>(var_0.a.x, var_0.a.x)), Struct_1(u_input.d.zz))), func_4(vec2<i32>(u_input.d.x, u_input.c.x), Struct_1(vec2<i32>(2147483647i, -40755i)), Struct_1(u_input.d.zz), Struct_2(Struct_1(u_input.d.zx), vec3<i32>(var_0.a.x, 1i, u_input.d.x), Struct_1(vec2<i32>(6293i, -39843i)), Struct_1(vec2<i32>(var_0.a.x, u_input.c.x)), Struct_1(u_input.c.xy))))), Struct_2(func_4(select(u_input.d.zy, var_0.a, vec2<bool>(false, false)), Struct_1(var_0.a), func_5(Struct_1(var_0.a), Struct_2(Struct_1(vec2<i32>(0i, var_0.a.x)), vec3<i32>(-25079i, u_input.d.x, 0i), Struct_1(vec2<i32>(-29109i, -33904i)), Struct_1(vec2<i32>(u_input.c.x, -2147483647i)), Struct_1(u_input.c.xx))), Struct_2(Struct_1(u_input.d.yy), u_input.d, Struct_1(var_0.a), Struct_1(u_input.c.zw), Struct_1(vec2<i32>(13886i, var_0.a.x)))).a, _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_0.a.x, -22266i, 0i)), _wgslsmith_clamp_vec3_i32(u_input.d, u_input.c.wxz, vec3<i32>(2482i, var_0.a.x, u_input.d.x))), func_5(Struct_1(vec2<i32>(-23011i, u_input.c.x)), Struct_2(Struct_1(var_0.a), u_input.d, Struct_1(u_input.d.yy), Struct_1(u_input.d.xy), Struct_1(vec2<i32>(0i, var_0.a.x)))), func_5(Struct_1(var_0.a), Struct_2(Struct_1(vec2<i32>(var_0.a.x, var_0.a.x)), vec3<i32>(10801i, 1i, 0i), Struct_1(vec2<i32>(-1172i, -2147483647i)), Struct_1(vec2<i32>(-15376i, u_input.d.x)), Struct_1(u_input.d.xx))), func_5(func_4(vec2<i32>(-12174i, 0i), Struct_1(var_0.a), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x)), Struct_2(Struct_1(vec2<i32>(u_input.d.x, 1i)), u_input.d, Struct_1(vec2<i32>(u_input.d.x, -2147483647i)), Struct_1(u_input.c.xx), Struct_1(u_input.c.yx))).e, func_4(var_0.a, Struct_1(u_input.d.yx), Struct_1(vec2<i32>(u_input.c.x, 28780i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 1417i)), vec3<i32>(-1i, var_0.a.x, 4357i), Struct_1(vec2<i32>(-7798i, var_0.a.x)), Struct_1(var_0.a), Struct_1(vec2<i32>(u_input.d.x, u_input.d.x))))))));
    global1 = array<vec3<u32>, 12>();
    var_0 = func_5(Struct_1(-var_0.a), var_1);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2552f, -1267f, 370f))), vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, -401f, 2219f) * vec3<f32>(683f, 1299f, 748f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(860f, 1000f, -1628f) * vec3<f32>(1080f, 849f, 854f))), true)), vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -143f))), _wgslsmith_f_op_f32(ceil(-1742f))))));
    let var_3 = Struct_1(-(_wgslsmith_mult_vec2_i32(-u_input.c.zw, ~u_input.d.yz) >> (u_input.b % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, var_2.x, vec4<i32>(1i, func_2(u_input.c), -u_input.d.x, abs(firstLeadingBit(-2147483647i)) & _wgslsmith_div_i32(1i << (u_input.b.x % 32u), var_0.a.x)), func_1().x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1067f), var_2.x)));
}

