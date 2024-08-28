struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(vec2<i32>(arg_0.c.a.x, u_input.a)), !(!vec2<bool>(arg_0.c.b.x, true)), _wgslsmith_div_vec2_f32(arg_0.c.c, _wgslsmith_f_op_vec2_f32(max(arg_0.b.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(197f, arg_0.c.c.x)))))), 0i, -567i), max(u_input.a, countOneBits(arg_0.b.a.x)), _wgslsmith_clamp_vec2_u32(~firstTrailingBit(arg_1.yy), u_input.b.wx, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, min(arg_1.x, arg_1.x)), vec2<u32>(25290u, arg_1.x))), arg_0.c);
    let var_1 = vec3<i32>(_wgslsmith_div_i32(1i, -1i), ~var_0.a.d, firstTrailingBit(-2147483647i)) << (vec3<u32>(~arg_1.x, 10128u, _wgslsmith_mod_u32(u_input.b.x, 1u)) % vec3<u32>(32u));
    var var_2 = var_0.a.b.x;
    var var_3 = Struct_3(false, arg_0.c, Struct_1(_wgslsmith_mod_vec2_i32(var_1.xz, vec2<i32>(~2147483647i, _wgslsmith_clamp_i32(u_input.a, var_1.x, 2147483647i))), var_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.c.x, arg_0.b.c.x))), var_0.a.c)), var_1.x, _wgslsmith_mod_i32(13153i, arg_0.c.a.x)));
    var_2 = true;
    return -3535i;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(arg_0.d.b.x, Struct_1(vec2<i32>(-1i, arg_0.a.a.x), vec2<bool>(countOneBits(1u) > _wgslsmith_mult_u32(u_input.b.x, arg_0.c.x), true), arg_0.a.c, select(-22284i, ~u_input.a | u_input.a, false), arg_0.d.e), Struct_1(vec2<i32>((arg_0.b | u_input.a) << (~1u % 32u), select(func_3(Struct_3(arg_0.d.b.x, arg_0.d, Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(arg_0.d.b.x, arg_0.d.b.x), arg_0.a.c, u_input.a, arg_0.a.d)), vec3<u32>(11975u, arg_0.c.x, u_input.b.x), u_input.b.wx), _wgslsmith_mod_i32(u_input.a, 1i), true)), select(!arg_0.d.b, arg_0.d.b, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d.c.x, arg_0.d.c.x), vec2<f32>(-1099f, -221f), arg_0.a.b.x)))) + arg_0.d.c), arg_0.d.d, max(~11810i | arg_0.a.d, u_input.a)));
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -573f);
    var var_3 = -30146i;
    var_3 = min(-arg_0.d.d, 0i);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = u_input.b.zyy;
    var_1 = u_input.b.xwx ^ ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.x, var_1.x, 1792u), u_input.b.wzx), ~1u, 4294967295u);
    var var_2 = 4294967295u;
    var_2 = _wgslsmith_dot_vec3_u32(u_input.b.yyx, u_input.b.wyw);
    return func_2(func_2(arg_0)).a;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_4(Struct_2(func_2(func_2(Struct_2(arg_0, -2147483647i, u_input.b.yx, Struct_1(arg_0.a, arg_0.b, vec2<f32>(218f, 970f), u_input.a, -2147483647i)))).d, func_2(Struct_2(Struct_1(arg_0.a, vec2<bool>(true, arg_0.b.x), vec2<f32>(arg_0.c.x, arg_0.c.x), -2147483647i, 47971i), -59552i, u_input.b.xw, Struct_1(vec2<i32>(2147483647i, arg_0.d), vec2<bool>(false, arg_0.b.x), arg_0.c, -2147483647i, -2147483647i))).a.a.x, ~u_input.b.xy, arg_0), Struct_1(arg_0.a, select(select(vec2<bool>(false, false), vec2<bool>(true, arg_0.b.x), true), vec2<bool>(false, true), func_4(Struct_2(arg_0, 1i, u_input.b.yz, Struct_1(vec2<i32>(0i, u_input.a), vec2<bool>(true, false), vec2<f32>(arg_0.c.x, arg_0.c.x), arg_0.e, 25806i)), Struct_1(arg_0.a, arg_0.b, vec2<f32>(arg_0.c.x, -618f), u_input.a, 2147483647i)).b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), arg_0.a.x, -22159i >> (min(u_input.b.x, 4294967295u) % 32u))), 0i, ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.yw), ~u_input.b.yx), u_input.b.yw), func_4(func_2(func_2(func_2(Struct_2(arg_0, arg_0.e, u_input.b.xx, arg_0)))), arg_0));
    var_0 = func_2(func_2(Struct_2(arg_0, arg_0.d, var_0.c, Struct_1(_wgslsmith_div_vec2_i32(var_0.d.a, var_0.d.a), select(vec2<bool>(arg_0.b.x, var_0.d.b.x), var_0.d.b, arg_0.b), _wgslsmith_f_op_vec2_f32(-var_0.d.c), -2147483647i, ~(-2147483647i)))));
    var_0 = Struct_2(func_4(Struct_2(func_2(func_2(Struct_2(Struct_1(vec2<i32>(0i, -2147483647i), vec2<bool>(var_0.d.b.x, var_0.d.b.x), arg_0.c, var_0.d.e, -12647i), -7686i, u_input.b.zy, Struct_1(var_0.a.a, vec2<bool>(arg_0.b.x, var_0.d.b.x), arg_0.c, var_0.b, var_0.a.a.x)))).a, _wgslsmith_dot_vec4_i32(vec4<i32>(33928i, var_0.d.d, -4212i, 8747i), vec4<i32>(arg_0.e, arg_0.a.x, u_input.a, 0i)), vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.wx, u_input.b.xw)), Struct_1(~arg_0.a, vec2<bool>(var_0.d.b.x, true), _wgslsmith_f_op_vec2_f32(var_0.d.c + var_0.d.c), 2147483647i, 2147483647i)), arg_0), var_0.a.a.x, ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 15515u), 1u)), Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(arg_0.a.x, u_input.a)), abs(-var_0.d.a)), func_2(func_2(func_2(Struct_2(arg_0, 34751i, vec2<u32>(u_input.b.x, var_0.c.x), arg_0)))).a.b, func_4(Struct_2(var_0.a, -2147483647i, ~u_input.b.wz, Struct_1(vec2<i32>(-1i, -21301i), arg_0.b, vec2<f32>(-1182f, arg_0.c.x), var_0.b, arg_0.e)), func_2(Struct_2(var_0.d, arg_0.e, vec2<u32>(u_input.b.x, var_0.c.x), var_0.a)).d).c, _wgslsmith_clamp_i32(max(abs(1i), _wgslsmith_sub_i32(-1i, u_input.a)), func_2(func_2(Struct_2(arg_0, var_0.d.d, vec2<u32>(var_0.c.x, 154758u), Struct_1(var_0.d.a, vec2<bool>(false, false), var_0.a.c, arg_0.a.x, var_0.a.d)))).d.a.x, 2147483647i), ~(countOneBits(var_0.a.a.x) | ~2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x - 759f)) + -235f);
    var_0 = Struct_2(arg_0, -(_wgslsmith_dot_vec2_i32(vec2<i32>(-32678i, arg_0.e), vec2<i32>(-12255i, 2147483647i)) >> (4294967295u % 32u)) << (75445u % 32u), var_0.c, func_4(Struct_2(var_0.d, u_input.a, vec2<u32>(u_input.b.x | u_input.b.x, u_input.b.x), func_4(func_2(Struct_2(var_0.d, arg_0.e, vec2<u32>(1u, 4294967295u), arg_0)), func_2(Struct_2(Struct_1(arg_0.a, var_0.d.b, vec2<f32>(var_0.a.c.x, 246f), 0i, u_input.a), arg_0.e, vec2<u32>(u_input.b.x, var_0.c.x), Struct_1(vec2<i32>(u_input.a, var_0.a.e), arg_0.b, var_0.a.c, var_0.b, var_0.d.a.x))).a)), arg_0));
    return var_0.a;
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = arg_1.d.b.x;
    var_0 = arg_1.d.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -166f))));
    var var_2 = firstTrailingBit(~(87228u >> (0u % 32u)));
    let var_3 = vec2<bool>(~_wgslsmith_clamp_u32(~u_input.b.x, arg_1.c.x, arg_1.c.x) == u_input.b.x, !arg_1.d.b.x);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + 1507f), _wgslsmith_f_op_f32(-1000f + arg_1.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), 807f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -408f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(369f, -260f, false))), _wgslsmith_f_op_f32(var_1.x * -637f))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1322f, arg_1.x, arg_1.x), arg_0))), arg_0)));
    var var_1 = arg_0.x;
    let var_2 = u_input.a;
    var_1 = -1389f;
    var_0 = _wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(arg_1.x * -1526f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-777f, var_0.x), -1729f)))), Struct_2(func_5(func_4(func_2(Struct_2(Struct_1(vec2<i32>(var_2, -1i), vec2<bool>(true, true), var_0.zw, 30909i, 40551i), u_input.a, u_input.b.yy, Struct_1(vec2<i32>(var_2, -2577i), vec2<bool>(false, true), var_0.yx, 18953i, u_input.a))), Struct_1(vec2<i32>(-44612i, var_2), vec2<bool>(false, false), vec2<f32>(390f, var_0.x), -52062i, 65573i))), _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(794i, 1i, u_input.a, 12743i), vec4<i32>(0i, u_input.a, 19172i, u_input.a)), 1i ^ (-26546i ^ var_2)), ~_wgslsmith_div_vec2_u32(vec2<u32>(25902u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec2<i32>(var_2, ~u_input.a), func_5(func_2(Struct_2(Struct_1(vec2<i32>(var_2, -6900i), vec2<bool>(true, false), var_0.xx, u_input.a, var_2), -71111i, vec2<u32>(0u, 883u), Struct_1(vec2<i32>(var_2, var_2), vec2<bool>(false, false), vec2<f32>(arg_0.x, arg_0.x), 2147483647i, 1i))).a).b, func_2(func_2(Struct_2(Struct_1(vec2<i32>(0i, 4673i), vec2<bool>(true, true), vec2<f32>(arg_0.x, arg_1.x), u_input.a, 0i), 2147483647i, u_input.b.wx, Struct_1(vec2<i32>(var_2, u_input.a), vec2<bool>(true, false), var_0.yw, 2147483647i, 0i)))).d.c, func_2(func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, 0i), vec2<bool>(false, false), vec2<f32>(arg_0.x, arg_0.x), u_input.a, var_2), u_input.a, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec2<i32>(18038i, var_2), vec2<bool>(true, true), vec2<f32>(arg_1.x, 518f), u_input.a, -16544i)))).b, -2147483647i))));
    return func_2(func_2(Struct_2(Struct_1(-vec2<i32>(28132i, var_2), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(floor(arg_1.xx)), firstTrailingBit(var_2), func_3(Struct_3(true, Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true), vec2<f32>(-1000f, arg_1.x), var_2, -1i), Struct_1(vec2<i32>(10489i, u_input.a), vec2<bool>(true, true), arg_1.zx, 0i, var_2)), u_input.b.zyw, u_input.b.wy)), firstLeadingBit(-9865i), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz >> (vec2<u32>(2949u, u_input.b.x) % vec2<u32>(32u))), Struct_1(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, var_2), vec2<bool>(true, true), vec2<f32>(788f, 348f), -13191i, -16504i), 17644i, vec2<u32>(4294967295u, 0u), Struct_1(vec2<i32>(var_2, var_2), vec2<bool>(true, false), arg_1.yz, -2147483647i, -75305i))).d.b, arg_1.yx, ~u_input.a, -var_2)))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), false), select(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1606f, 1158f, -1067f, 181f)), vec3<f32>(184f, -2051f, 294f)), vec2<bool>(false, true), !func_5(Struct_1(vec2<i32>(-40616i, u_input.a), vec2<bool>(true, true), vec2<f32>(102f, 117f), 0i, -1i)).b.x), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), select(select(!func_1(vec4<f32>(686f, -1984f, 927f, 199f), vec3<f32>(1402f, -304f, 1000f)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), func_2(func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true), vec2<f32>(1936f, 949f), u_input.a, 23724i), u_input.a, u_input.b.zw, Struct_1(vec2<i32>(u_input.a, -2147483647i), vec2<bool>(true, true), vec2<f32>(-107f, 623f), u_input.a, -24148i)))).d.b), vec2<bool>(!any(vec4<bool>(true, false, true, false)), true), all(vec3<bool>(true, true, true))), select(func_5(Struct_1(vec2<i32>(u_input.a, -1i), func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, -6592i), vec2<bool>(true, true), vec2<f32>(-298f, -185f), u_input.a, u_input.a), 1i, u_input.b.wz, Struct_1(vec2<i32>(18860i, 28079i), vec2<bool>(false, false), vec2<f32>(-964f, -496f), -24144i, u_input.a))).a.b, func_5(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false), vec2<f32>(315f, 1302f), 1i, u_input.a)).c, u_input.a, 1i)).b, vec2<bool>(true, true), -40701i <= _wgslsmith_mod_i32(-8518i, u_input.a ^ u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1390f - 299f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_vec4_f32(func_6(-1204f, Struct_2(Struct_1(vec2<i32>(u_input.a, 63166i), vec2<bool>(var_0.x, false), vec2<f32>(364f, -759f), 1i, 1i), -74408i, u_input.b.yz, Struct_1(vec2<i32>(5927i, u_input.a), vec2<bool>(false, true), vec2<f32>(680f, 953f), u_input.a, -1i)))).x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(152f, -396f)));
}

