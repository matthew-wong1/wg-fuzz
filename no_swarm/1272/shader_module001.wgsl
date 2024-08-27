struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = select(vec3<bool>(all(vec3<bool>(true, any(vec2<bool>(true, false)), true)), 36935i < countOneBits(-u_input.d.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 45517u, u_input.e.x, u_input.b)), vec4<u32>(14627u, u_input.b, 0u, u_input.e.x) | vec4<u32>(18118u, 25513u, u_input.c, u_input.e.x)) <= u_input.c), select(vec3<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false)) != false, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true && any(vec4<bool>(true, true, true, true)))), select(vec3<bool>(true, true, true), vec3<bool>(!(u_input.c > 0u), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false)), !all(vec2<bool>(false, false))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1254f * 449f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), 258f, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2100f - var_1), var_1)), vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(min(var_1, var_1))), var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(var_1, -867f, false)))), 1141f), vec4<bool>(all(vec2<bool>(var_0.x, true)), true, all(var_0.yy), any(select(var_0.yz, var_0.xy, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(floor(-355f)))), var_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(1332f * _wgslsmith_f_op_f32(219f + var_1))), _wgslsmith_f_op_f32(-var_1)), !select(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, var_0.x, false)), vec4<bool>(all(var_0.zz), var_0.x & false, var_0.x, true), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1097f - _wgslsmith_f_op_f32(exp2(var_2.x))), 1039f, _wgslsmith_div_f32(var_2.x, var_2.x), var_2.x))));
    let var_3 = Struct_1(abs(u_input.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2942f, -670f, 1000f, var_1), vec4<f32>(var_1, 161f, 1246f, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1, var_2.x, -814f)), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, true))))))), -max(u_input.a.x, ~(~32469i)), var_0.x);
    return vec3<bool>(!all(vec2<bool>(true, true)), any(vec3<bool>(var_0.x, var_0.x, false || (u_input.b >= u_input.e.x))), !var_3.d);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(-273f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-181f, -115f))), _wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(max(-1000f, -1000f))))))), -452f);
    var var_1 = select(!select(vec3<bool>(true, true, true), select(func_3(), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(select(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true)), true, any(func_3().zz)), true, u_input.a.x >= -25802i), !func_3().x);
    var_1 = vec3<bool>(var_1.x, !(!var_1.x), true);
    var_1 = !func_3();
    return Struct_1(u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1274f, var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x), 637f)), abs(-(~u_input.a.x)) ^ (-43808i | (-11934i & -u_input.d.x)), true);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(i32(-1i) * -29637i, ~(arg_0.c << (u_input.b % 32u)), min(arg_0.c, u_input.a.x >> (42028u % 32u))), 40748i), Struct_1(-(~select(-2147483647i, u_input.a.x, false)), arg_0.b, abs(u_input.d.x & 1i), u_input.a.x > ~(~30733i)));
    var var_1 = _wgslsmith_f_op_f32(select(var_0.b.b.x, 148f, select(var_0.b.d, false, false)));
    var var_2 = vec4<i32>(20937i, _wgslsmith_mod_i32(-(~(var_0.b.a >> (u_input.b % 32u))), _wgslsmith_div_i32(var_0.b.c, 0i)), -6890i | _wgslsmith_add_i32(firstLeadingBit(var_0.a), arg_0.c), var_0.b.a);
    var var_3 = -_wgslsmith_clamp_vec3_i32(min(select(vec3<i32>(5033i, u_input.d.x, var_2.x), vec3<i32>(-2147483647i, 0i, arg_0.c), vec3<bool>(var_0.b.d, true, false)), vec3<i32>(u_input.a.x, -21170i, -86383i)), var_2.xzy | vec3<i32>(1i, var_2.x, 55720i), -var_2.xxy) << (select(vec3<u32>(4294967295u, ~1u, 0u), vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(51671u), 3722u, 64992u), u_input.b, 65692u), vec3<bool>(var_0.b.d, arg_0.d, true)) % vec3<u32>(32u));
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -1800i, ~(-63761i)), -u_input.d.x);
    return Struct_3(Struct_2(-(i32(-1i) * -2147483647i), arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(-var_0.b.b.x))), var_0.b.b.x, 1f) + _wgslsmith_f_op_vec3_f32(max(arg_0.b.wxz, arg_0.b.yyy))), select(select(!(!vec2<bool>(var_0.b.d, true)), select(vec2<bool>(false, var_0.b.d), vec2<bool>(arg_0.d, arg_0.d), !vec2<bool>(arg_0.d, var_0.b.d)), ~var_2.x >= -46343i), !vec2<bool>(any(vec4<bool>(arg_0.d, false, arg_0.d, true)), func_2(vec3<u32>(1u, u_input.e.x, u_input.c)).d), select(select(select(vec2<bool>(var_0.b.d, false), vec2<bool>(var_0.b.d, var_0.b.d), false), func_3().zy, vec2<bool>(var_0.b.d, arg_0.d)), select(vec2<bool>(var_0.b.d, arg_0.d), select(vec2<bool>(var_0.b.d, arg_0.d), vec2<bool>(var_0.b.d, var_0.b.d), false), select(vec2<bool>(false, false), vec2<bool>(var_0.b.d, true), arg_0.d)), true)), _wgslsmith_f_op_f32(681f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-784f, 1972f)) + _wgslsmith_f_op_f32(arg_0.b.x - 197f))), var_2.x);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_2.e, _wgslsmith_clamp_i32(arg_2.a.a, arg_0.a, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), u_input.a), ~(-17006i))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.d.x, -12054i, 0i, -2147483647i)), firstLeadingBit(vec4<i32>(1i, -2147483647i, arg_1, arg_2.e)) ^ reverseBits(vec4<i32>(35070i, -2147483647i, arg_0.a, arg_1)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(56174i, -21003i, arg_0.c, -1i), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, 30793i)), ~vec4<i32>(arg_2.e, 1i, u_input.d.x, arg_0.c)))) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(24812i, 85756i)), vec2<i32>(-7919i, max(arg_1 << (0u % 32u), 2147483647i)));
    let var_2 = ~reverseBits(_wgslsmith_mod_u32(0u, 93351u) | abs(~u_input.c));
    let var_3 = !(!(!(!all(vec4<bool>(true, true, false, true)))));
    var_0 = arg_2.a.b.b.x;
    return arg_0.d;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec3<bool> {
    let var_0 = any(vec4<bool>(false, false, false, true));
    var var_1 = Struct_1(~(~(-(i32(-1i) * -1i))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1043f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-arg_0))))), u_input.d.x, func_5(Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1210f, arg_0.x, arg_0.x, arg_0.x) - arg_0) * _wgslsmith_f_op_vec4_f32(abs(arg_0))), arg_1, (var_0 && true) && var_0), -arg_1 << (min(u_input.e.x, _wgslsmith_div_u32(10976u, u_input.c)) % 32u), func_4(func_2(vec3<u32>(4294967295u, u_input.e.x, 9677u) ^ vec3<u32>(u_input.c, u_input.e.x, u_input.b)))));
    let var_2 = func_4(func_2(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.e.x, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 58085u, 4294967295u), vec3<u32>(u_input.e.x, 49226u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, 34016u), vec3<u32>(0u, 1u, 4294967295u))) & min(~vec3<u32>(4294967295u, u_input.e.x, 4294967295u), vec3<u32>(1u, 3165u, u_input.c))));
    var var_3 = var_2.a.b;
    let var_4 = func_4(func_4(func_2(vec3<u32>(~0u, u_input.b, u_input.c & u_input.e.x))).a.b).a;
    return select(select(!vec3<bool>(true, !var_1.d, true), !(!select(vec3<bool>(false, var_2.c.x, false), vec3<bool>(false, var_4.b.d, var_4.b.d), vec3<bool>(false, var_1.d, false))), select(vec3<bool>(false && var_1.d, !var_3.d, var_0), func_3(), any(!vec4<bool>(var_1.d, true, var_2.a.b.d, var_2.a.b.d)))), func_3(), !func_3());
}

fn func_6(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = func_4(arg_2.a.b);
    var var_1 = func_4(func_2(~vec3<u32>(u_input.e.x, u_input.c, countOneBits(u_input.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1109f)), -832f, _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.b.b.yzw - vec3<f32>(-1463f, var_1.d, arg_2.a.b.b.x)) - vec3<f32>(-827f, arg_2.b.x, var_0.a.b.b.x)))), vec3<bool>(func_5(Struct_1(-2147483647i, var_0.a.b.b, 1i, var_1.a.b.d), 5809i, var_0), arg_2.a.b.d, var_0.a.b.d))));
    var_2 = var_1.b;
    return Struct_1(_wgslsmith_mult_i32(var_1.e, arg_2.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.b.b - vec4<f32>(-1000f, -368f, var_1.d, var_0.d))) - func_2(vec3<u32>(u_input.e.x, 0u, u_input.b)).b)), ~2147483647i & arg_2.a.b.a, !all(func_1(var_0.a.b.b, ~(-19415i)).yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 29730i;
    let var_1 = Struct_2(u_input.d.x, func_6(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), !(!func_1(vec4<f32>(272f, 1000f, 603f, -1957f), u_input.d.x)), Struct_3(Struct_2(var_0, Struct_1(u_input.d.x, vec4<f32>(-692f, 602f, -409f, 1291f), var_0, false)), func_4(Struct_1(73200i, vec4<f32>(1000f, 1770f, -208f, -1692f), var_0, false)).b, select(func_4(Struct_1(-1i, vec4<f32>(253f, 798f, 1000f, 217f), u_input.d.x, true)).c, vec2<bool>(true, true), true), -1070f, var_0), ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(var_0, 0i)), u_input.a)));
    var var_2 = vec2<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(func_2(vec3<u32>(0u, 4294967295u, 17679u)).b.x - -1321f))) - _wgslsmith_f_op_f32(f32(-1f) * -427f)));
    let var_3 = ~u_input.e;
    var var_4 = Struct_4(u_input.d, var_1);
    let var_5 = var_4.b;
    var var_6 = max(abs(min(select(abs(u_input.c), 4294967295u, var_5.b.d), countOneBits(_wgslsmith_sub_u32(35588u, 7150u)))), min(select(36933u, 0u, true && (var_4.b.b.b.x < var_1.b.b.x)), ~_wgslsmith_add_u32(23553u, ~79347u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.b.x)), 631f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.b.b.x) - 894f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1628f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -163f), 301f))));
}

