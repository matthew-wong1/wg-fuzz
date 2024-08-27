struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = Struct_2(arg_0.b, Struct_1(arg_0.b.c.zz, select(select(arg_0.b.b, select(arg_0.b.b, arg_0.b.b, false), arg_0.b.b), select(!arg_0.a.b, select(vec3<bool>(true, arg_0.b.d, false), arg_0.a.b, arg_0.b.b), all(arg_0.a.b.yy)), arg_0.a.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.c.x + -1265f), 174f, arg_0.a.a.x)), !(u_input.a > abs(1u))), arg_0.a.a.x);
    return !arg_0.a.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec4<f32> {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~132754u, ~(~59457u)), ~u_input.a);
    var var_1 = vec4<bool>((!(!arg_1.x) | (!arg_1.x | (arg_1.x != false))) && select(true, (u_input.b.x | -2147483647i) > (2147483647i ^ u_input.b.x), arg_1.x), arg_1.x, select(arg_1.x, any(!vec4<bool>(true, false, arg_1.x, true)) && any(select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), false)), !func_3(Struct_2(Struct_1(vec2<f32>(291f, -1843f), arg_1, vec3<f32>(135f, 514f, -556f), true), Struct_1(vec2<f32>(244f, 1429f), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(391f, 1230f, 374f), false), 848f))), true);
    let var_2 = -1477i;
    var var_3 = var_1.x;
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1000f, 594f), 1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-289f, -431f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, -723f))), !(arg_0.x <= 25036u))), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(383f, -1014f, 157f) - vec3<f32>(-110f, -558f, -290f)))), !(!(!arg_1.x))), vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1863f)), _wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1759f)))))), vec4<u32>(~(~(~var_0.x)), ~(~max(1u, 35697u)), ~(reverseBits(arg_0.x) & 1u), ~4294967295u));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(274f * _wgslsmith_f_op_f32(-var_4.a.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -474f), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_4.b.x, var_4.b.x)))), -948f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.a.c.x, var_4.b.x, var_4.b.x, -438f), vec4<f32>(437f, 639f, -963f, var_4.a.a.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b.x, var_4.a.c.x, -1649f, var_4.b.x), vec4<f32>(var_4.a.c.x, var_4.a.c.x, -196f, -1270f), vec4<bool>(false, false, arg_1.x, var_1.x))) + vec4<f32>(1642f, -862f, var_4.a.c.x, 1000f))))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(549f, -102f, 2012f, 1364f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1678f, 100f, 224f, -754f)), arg_1)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(314f, -837f, -595f, -576f), vec4<f32>(1000f, -2007f, -420f, -492f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-656f, 338f, -120f, 1126f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(107830u, 1u), vec3<bool>(true, arg_1, false))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(743f, -1217f, -938f, 665f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1265f, -1117f, -389f, 779f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, -824f, 1076f, -828f)) + vec4<f32>(-705f, -351f, -1035f, -194f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -719f, 1310f, -1818f) + vec4<f32>(1529f, -1000f, 618f, -169f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -735f, 1403f, 181f), vec4<f32>(543f, -718f, -739f, 249f))) + vec4<f32>(-1364f, -1344f, -480f, -434f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(315f, -358f, 1000f, 871f))))))), true)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -2212f) - 666f))))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(9366u, 0u), vec2<u32>(u_input.a, 38539u), vec2<u32>(0u, u_input.a)) | firstLeadingBit(~vec2<u32>(u_input.a, 47339u)), select(vec3<bool>(true, true, var_0.x < var_0.x), vec3<bool>(!arg_1, any(vec2<bool>(arg_1, false)), true), !(!vec3<bool>(arg_1, false, true))))).x, var_0.x, _wgslsmith_f_op_vec4_f32(func_2(select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, 4294967295u)) | ~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a), select(!vec2<bool>(true, arg_1), !vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false))), vec3<bool>(!any(vec3<bool>(arg_1, arg_1, arg_1)), arg_1, any(vec4<bool>(false, arg_1, true, arg_1)) == arg_1))).x);
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(-606f)), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), var_0.x > var_0.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_1)), _wgslsmith_f_op_f32(-var_0.x), -280f))), true), _wgslsmith_div_vec3_f32(var_0.wyz, var_0.www), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), ~(~u_input.a), 0u), vec4<u32>(~(64247u | u_input.a), u_input.a, u_input.a, u_input.a)));
    var var_2 = var_1.a;
    var var_3 = 10130i;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_1.a.c.yx)))), var_2.b, _wgslsmith_f_op_vec3_f32(abs(var_1.b)), true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), var_1.a.b)).xx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_2.c.x))), !(!(!vec3<bool>(arg_1, var_2.d, var_2.b.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(var_0.x * -700f), -346f))), (select(false, arg_1, var_2.d) && any(var_1.a.b.xy)) & false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-681f, _wgslsmith_f_op_f32(f32(-1f) * -1410f))), var_1.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(210f)) + _wgslsmith_f_op_f32(max(arg_0.c, -803f))), 1597f);
    var_0 = vec2<f32>(arg_0.c, var_0.x);
    let var_1 = 2625u;
    var var_2 = Struct_3(arg_0.b, arg_0.b.c, vec4<u32>(arg_1 >> (~4294967295u % 32u), u_input.a, max(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26421u, var_1), vec2<u32>(arg_1, 12226u)), arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(20730u, 4294967295u, 41818u), vec3<u32>(arg_1, 4294967295u, 1u)) >> (_wgslsmith_mult_u32(arg_1, var_1) % 32u)), ~(_wgslsmith_add_u32(3134u, 1u) ^ countOneBits(var_1))));
    let var_3 = func_1(_wgslsmith_clamp_i32(u_input.b.x, min(-45054i, 0i), u_input.b.x), var_2.a.b.x, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(53609i, 40065i, -2147483647i, u_input.b.x) << (var_2.c % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(1i, 1i, 2147483647i, -42679i)))), -19179i);
    return _wgslsmith_add_vec4_u32(var_2.c, var_2.c);
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f + -1000f) + -601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + -1173f))), vec3<bool>(true, func_1(u_input.b.x, true, ~u_input.b.x, arg_2.x).b.d, true), vec3<f32>(_wgslsmith_f_op_f32(972f - -1205f), -218f, 1194f), arg_3), vec3<f32>(1148f, 555f, -989f), firstTrailingBit(arg_1));
    let var_1 = func_1(-1i, true, u_input.b.x, arg_2.x);
    var var_2 = var_0.a.a.x;
    var var_3 = func_1(~(-_wgslsmith_mult_i32(1i, u_input.b.x)), 4294967295u >= arg_0, firstTrailingBit(-56895i), ~u_input.b.x).a;
    let var_4 = 963f;
    return func_1(_wgslsmith_div_i32(u_input.b.x, countOneBits(u_input.b.x)), var_0.a.d, arg_2.x, i32(-1i) * -u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(39447u, firstTrailingBit(func_4(func_1(~(-2147483647i), all(vec3<bool>(true, false, true)), _wgslsmith_div_i32(-2531i, -1i), -17401i), 58265u)), _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(~u_input.b.x), _wgslsmith_mod_i32(17188i, firstTrailingBit(u_input.b.x)), 1i, u_input.b.x), vec4<i32>(-_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, 25304i)), -firstLeadingBit(2147483647i), u_input.b.x & u_input.b.x, u_input.b.x)), true);
    var var_1 = vec2<f32>(-1000f, 2205f);
    var_1 = var_0.a.c.yz;
    let var_2 = Struct_3(func_5(abs(4294967295u | func_4(Struct_2(Struct_1(vec2<f32>(var_0.b.c.x, var_0.a.c.x), var_0.a.b, vec3<f32>(var_1.x, 745f, var_1.x), false), Struct_1(var_0.b.c.yx, var_0.b.b, var_0.b.c, false), var_1.x), 89881u).x), ~(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 41419u)) >> (~vec4<u32>(u_input.a, 4294967295u, u_input.a, 27556u) % vec4<u32>(32u))), reverseBits(vec4<i32>(-53314i, abs(u_input.b.x), firstTrailingBit(u_input.b.x), -18913i)), (!var_0.a.b.x || func_5(0u, vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i), var_0.b.b.x).a.d) & all(var_0.a.b)).b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b.c.x, var_1.x, true)) * _wgslsmith_f_op_f32(-var_1.x)) - -814f), _wgslsmith_f_op_vec4_f32(func_2(abs(vec2<u32>(0u, u_input.a)) | vec2<u32>(4294967295u, u_input.a), func_5(21604u, min(vec4<u32>(u_input.a, 1u, 33228u, 47282u), vec4<u32>(1u, 31021u, u_input.a, 1u)), vec4<i32>(u_input.b.x, 0i, u_input.b.x, -1i), true).b.b)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(var_1.x * 1f))), ~(~(~vec4<u32>(33288u, 0u, 0u, u_input.a) ^ (vec4<u32>(u_input.a, 19111u, 19049u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(17i, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -1i, ~(-24647i)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<i32>(40849i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 49424i, u_input.b.x) ^ vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 0i), reverseBits(~u_input.b) | reverseBits(select(u_input.b, u_input.b, vec2<bool>(false, var_2.a.d)))));
}

