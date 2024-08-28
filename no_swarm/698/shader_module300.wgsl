struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec4<bool> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(abs(802f));
    var_1 = 1000f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f - -1991f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)))))) - arg_0.a.a.x);
    let var_2 = arg_0.b.d.x;
    return vec4<bool>(true, !arg_1.b.c, true, arg_0.a.c);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2)), arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(166f, 256f))) * arg_2))) * arg_2);
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -240f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -638f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -461f)) + _wgslsmith_f_op_f32(floor(-566f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(min(4294967295u, firstLeadingBit(1u)), any(func_2(Struct_3(Struct_2(vec3<f32>(2057f, -129f, -535f), u_input.a, true, vec2<i32>(1i, -20074i), Struct_1(false)), Struct_2(vec3<f32>(-570f, 1177f, -1263f), u_input.a, true, u_input.a.yx, Struct_1(false)), vec3<f32>(-586f, -582f, 1587f), vec2<f32>(-2100f, 245f)), Struct_3(Struct_2(vec3<f32>(-1608f, -1369f, -1000f), u_input.a, true, u_input.a.yx, Struct_1(true)), Struct_2(vec3<f32>(-1333f, -193f, 550f), vec3<i32>(2147483647i, -1i, u_input.a.x), false, vec2<i32>(-25284i, -22317i), Struct_1(false)), vec3<f32>(1000f, -696f, 384f), vec2<f32>(-1149f, -534f)), true, 98614u)), _wgslsmith_f_op_f32(-646f - _wgslsmith_f_op_f32(floor(934f))), reverseBits(abs(vec4<i32>(-5263i, 4030i, u_input.a.x, -678i)))))));
    let var_1 = var_0.yx;
    var var_2 = firstTrailingBit(~61124u);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(224f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(928f)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1000f + var_0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(1333f + var_1.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(max(var_0.x, -150f))))));
    var var_4 = 7780u;
    return Struct_3(Struct_2(var_0, ~(vec3<i32>(u_input.a.x, -1i, -2147483647i) & ~vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), true, vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -5583i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) ^ 34584i), Struct_1(true)), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(var_0, vec3<f32>(414f, 1000f, -555f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, var_0.x, var_0.x))))), var_0, var_3.x == var_1.x)), _wgslsmith_clamp_vec3_i32(max(abs(vec3<i32>(u_input.a.x, 9346i, 0i)), u_input.a), countOneBits(-vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), vec3<i32>(20612i, max(23381i, 0i), u_input.a.x)), all(vec2<bool>(true, true)) || func_2(Struct_3(Struct_2(var_3, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), true, vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(true)), Struct_2(vec3<f32>(-423f, 913f, var_0.x), u_input.a, true, u_input.a.zy, Struct_1(true)), var_0, var_3.yy), Struct_3(Struct_2(vec3<f32>(-724f, -149f, var_0.x), u_input.a, false, vec2<i32>(0i, -2147483647i), Struct_1(false)), Struct_2(var_3, vec3<i32>(0i, u_input.a.x, u_input.a.x), false, vec2<i32>(49289i, 33417i), Struct_1(false)), var_3, vec2<f32>(var_3.x, var_1.x)), true, 40015u).x, select(-vec2<i32>(0i, u_input.a.x), _wgslsmith_sub_vec2_i32(-vec2<i32>(0i, -32584i), select(vec2<i32>(-1i, u_input.a.x), u_input.a.zx, vec2<bool>(true, false))), all(vec2<bool>(true, false))), Struct_1(true)), var_3, vec2<f32>(-1264f, var_0.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = 2147483647i;
    var_0 = arg_3.d.x;
    let var_1 = func_1().b.d.x;
    var_0 = _wgslsmith_dot_vec3_i32(arg_3.b, ~arg_3.b);
    var var_2 = ~vec2<i32>(2424i, arg_3.d.x);
    return arg_0.a;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = max(vec3<u32>(~(_wgslsmith_sub_u32(44326u, 0u) >> (1u % 32u)), ~(~1u), abs(1u)), vec3<u32>(~_wgslsmith_mod_u32(0u, firstLeadingBit(0u)), ~(~(~4294967295u)), min(1u, 1u)));
    var var_1 = func_4(func_1(), Struct_3(func_4(Struct_3(func_1().a, Struct_2(vec3<f32>(arg_0.d.x, arg_0.a.a.x, arg_0.a.a.x), vec3<i32>(-17002i, arg_0.b.d.x, 23339i), arg_0.a.c, vec2<i32>(-1i, 2147483647i), arg_0.b.e), _wgslsmith_f_op_vec3_f32(-arg_0.b.a), arg_0.b.a.yy), Struct_3(func_4(arg_0, Struct_3(arg_0.b, Struct_2(arg_0.c, vec3<i32>(2147483647i, u_input.a.x, arg_0.a.b.x), arg_0.b.c, vec2<i32>(-59309i, arg_0.a.b.x), arg_0.a.e), vec3<f32>(-1000f, -384f, arg_0.a.a.x), vec2<f32>(619f, -1000f)), -2062i, Struct_2(vec3<f32>(1700f, 253f, 1869f), u_input.a, false, vec2<i32>(2279i, u_input.a.x), Struct_1(false))), func_1().b, _wgslsmith_f_op_vec3_f32(arg_0.a.a - arg_0.c), vec2<f32>(-1509f, arg_0.d.x)), firstTrailingBit(arg_0.a.b.x), Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(668f, arg_0.b.a.x, 1000f), arg_0.c)), vec3<i32>(u_input.a.x, arg_0.a.b.x, u_input.a.x), all(vec4<bool>(arg_0.b.c, arg_0.b.e.a, arg_0.b.e.a, false)), vec2<i32>(34810i, arg_0.a.b.x), arg_0.b.e)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a.x, 700f, 1143f) - vec3<f32>(213f, 1754f, -1115f)) + _wgslsmith_f_op_vec3_f32(-arg_0.a.a)), arg_0.a.b, min(-44918i, u_input.a.x) >= _wgslsmith_dot_vec3_i32(vec3<i32>(19634i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 26220i, u_input.a.x)), (vec2<i32>(u_input.a.x, arg_0.b.d.x) << (var_0.yy % vec2<u32>(32u))) ^ (u_input.a.zx << (var_0.zy % vec2<u32>(32u))), arg_0.b.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.d.x, arg_0.a.a.x) * _wgslsmith_f_op_vec3_f32(arg_0.c - vec3<f32>(562f, 1000f, arg_0.c.x))), vec2<f32>(-114f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.x, arg_0.c.x) * 1445f))), max(0i, arg_0.b.b.x), func_1().a).e;
    let var_2 = reverseBits(-2147483647i);
    let var_3 = arg_0.b.e;
    var_1 = var_3;
    return Struct_1(false);
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = func_1().b;
    var var_1 = firstLeadingBit(vec4<i32>(1i, -41823i, var_0.d.x, 55579i));
    var_1 = countOneBits(~vec4<i32>(14058i, ~var_1.x, i32(-1i) * -14299i, _wgslsmith_mod_i32(var_0.d.x, 2988i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(81545i, i32(-1i) * -u_input.a.x, -(~u_input.a.x), arg_3.b.d.x | u_input.a.x), countOneBits(-vec4<i32>(arg_1.x, -3173i, 2147483647i, var_0.b.x) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_2 = arg_3.b.a;
    let var_3 = Struct_1(true);
    return StorageBuffer(reverseBits(~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(77675u, 0u, 6845u, 4294967295u), any(vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(Struct_3(func_4(Struct_3(Struct_2(vec3<f32>(2043f, -390f, -414f), vec3<i32>(u_input.a.x, u_input.a.x, -29578i), true, u_input.a.xy, Struct_1(true)), Struct_2(vec3<f32>(-138f, -153f, -1143f), u_input.a, true, vec2<i32>(-18632i, 29092i), Struct_1(true)), vec3<f32>(-295f, 1807f, 592f), vec2<f32>(-1271f, 1095f)), func_1(), max(2147483647i, 0i), Struct_2(vec3<f32>(-244f, -1719f, -680f), u_input.a, true, vec2<i32>(u_input.a.x, 2147483647i), Struct_1(false))), Struct_2(vec3<f32>(392f, -362f, -230f), u_input.a ^ u_input.a, true, u_input.a.zy, Struct_1(true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(619f, 1289f, 496f))), vec2<f32>(_wgslsmith_f_op_f32(max(1971f, -1175f)), 1296f))), vec2<i32>(u_input.a.x << (0u % 32u), u_input.a.x), vec4<bool>(true, false, true, all(vec3<bool>(true, true, any(vec4<bool>(false, false, false, true))))), func_1());
}

