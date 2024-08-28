struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_1.b.a;
    let var_1 = arg_1.c;
    let var_2 = Struct_5(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), !any(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, -559f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c.a.b.x, var_1.a.b.x))))), !(var_1.a.a < arg_1.b.a))), select(select(vec4<bool>(arg_2.x >= var_1.a.d.x, any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, select(true, false, false), true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, false))), !vec4<bool>(false, true, all(vec3<bool>(true, true, false)), true), _wgslsmith_f_op_f32(-arg_1.c.a.e.x) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-390f * arg_0.c.a.b.x)))));
    var var_3 = _wgslsmith_f_op_f32(arg_0.d.x + arg_0.b.b.x);
    let var_4 = Struct_4(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2086f, -879f))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_2.b.x))))), arg_1, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b.c.x, select(~51599u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.x, arg_0.b.c.x, 7893u, 41084u), vec4<u32>(arg_1.a.a.c.x, arg_0.b.c.x, 0u, u_input.b)), select(var_2.c.x, false, true))), ~(arg_0.b.c << ((vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(38189u, 49579u) % vec2<u32>(32u))) % vec2<u32>(32u)))), select(true, true, var_2.a.x), select(var_2.a, !var_2.a, var_2.c.wwy));
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_5(vec3<bool>(all(vec2<bool>(false, false)) || (func_3(Struct_3(Struct_2(Struct_1(-26159i, vec4<f32>(arg_0.x, arg_0.x, 138f, -526f), vec2<u32>(u_input.b, u_input.a), vec2<i32>(15336i, 2147483647i), vec2<f32>(-1054f, 1117f))), Struct_1(arg_1.x, vec4<f32>(2005f, -2907f, 506f, -629f), vec2<u32>(u_input.b, u_input.a), vec2<i32>(-2147483647i, -3270i), vec2<f32>(arg_0.x, 208f)), Struct_2(Struct_1(arg_1.x, vec4<f32>(-1000f, -896f, 192f, arg_0.x), vec2<u32>(u_input.b, 2190u), arg_1.zx, arg_0.zy)), vec3<f32>(arg_0.x, -1572f, arg_0.x)), Struct_3(Struct_2(Struct_1(arg_1.x, vec4<f32>(arg_0.x, -1347f, arg_0.x, 1460f), vec2<u32>(54362u, u_input.b), arg_1.zy, arg_0.yz)), Struct_1(0i, vec4<f32>(arg_0.x, arg_0.x, -655f, arg_0.x), vec2<u32>(4294967295u, 1u), vec2<i32>(-18159i, arg_1.x), arg_0.xy), Struct_2(Struct_1(arg_1.x, vec4<f32>(-841f, -981f, arg_0.x, arg_0.x), vec2<u32>(38511u, u_input.b), vec2<i32>(0i, 41108i), vec2<f32>(727f, arg_0.x))), arg_0), vec4<i32>(0i, -1i, arg_1.x, arg_1.x)) | true), true, true), vec2<f32>(_wgslsmith_f_op_f32(floor(-1488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), !(!vec4<bool>(any(vec2<bool>(true, true)), arg_1.x >= arg_1.x, true, true)));
    var_0 = Struct_5(select(!vec3<bool>(var_0.a.x, select(true, true, var_0.c.x), var_0.c.x), !select(select(vec3<bool>(var_0.a.x, true, false), var_0.a, vec3<bool>(true, var_0.a.x, var_0.a.x)), vec3<bool>(var_0.c.x, true, true), vec3<bool>(true, false, var_0.a.x)), var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(324f, _wgslsmith_div_f32(1545f, -197f))), !vec4<bool>(all(!vec2<bool>(var_0.c.x, false)), true, select(false, true, true), !(!var_0.c.x)));
    var var_1 = vec4<i32>(reverseBits(-firstLeadingBit(_wgslsmith_div_i32(arg_1.x, arg_1.x))), 1i, arg_1.x, arg_1.x);
    var_0 = Struct_5(vec3<bool>(844f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, 540f))), true, all(vec3<bool>(false, !var_0.a.x, func_3(Struct_3(Struct_2(Struct_1(arg_1.x, vec4<f32>(var_0.b.x, -856f, arg_0.x, -769f), vec2<u32>(u_input.a, 4294967295u), vec2<i32>(29407i, 35732i), vec2<f32>(790f, var_0.b.x))), Struct_1(arg_1.x, vec4<f32>(arg_0.x, var_0.b.x, arg_0.x, 1021f), vec2<u32>(0u, 3017u), arg_1.zw, vec2<f32>(-1000f, var_0.b.x)), Struct_2(Struct_1(39537i, vec4<f32>(605f, var_0.b.x, var_0.b.x, var_0.b.x), vec2<u32>(u_input.b, u_input.a), vec2<i32>(var_1.x, arg_1.x), arg_0.xx)), vec3<f32>(937f, 801f, 922f)), Struct_3(Struct_2(Struct_1(var_1.x, vec4<f32>(var_0.b.x, arg_0.x, -1301f, 393f), vec2<u32>(39723u, u_input.b), vec2<i32>(arg_1.x, 10236i), arg_0.xz)), Struct_1(20712i, vec4<f32>(var_0.b.x, arg_0.x, arg_0.x, 968f), vec2<u32>(1u, 3179u), var_1.wz, vec2<f32>(1145f, arg_0.x)), Struct_2(Struct_1(arg_1.x, vec4<f32>(514f, arg_0.x, -1000f, arg_0.x), vec2<u32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, 27668i), vec2<f32>(381f, 174f))), vec3<f32>(var_0.b.x, arg_0.x, var_0.b.x)), arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, 1000f))), -368f), vec4<bool>(var_0.c.x, var_0.a.x, !(!var_0.a.x) && all(vec2<bool>(var_0.c.x, var_0.c.x)), !(!var_0.a.x | all(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x)))));
    var_1 = arg_1;
    return 0i ^ arg_1.x;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = arg_2.b;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, var_0.b.x, arg_2.b.b.x, var_0.e.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.e.x, -279f, arg_1.b.x, arg_1.b.x) - vec4<f32>(-626f, 537f, 925f, var_0.e.x)))))), (vec2<u32>(var_0.c.x, u_input.b) >> (~vec2<u32>(arg_1.c.x, 21970u) % vec2<u32>(32u))) ^ countOneBits(vec2<u32>(_wgslsmith_mult_u32(0u, 6449u), ~4294967295u)), abs(countOneBits(_wgslsmith_mod_vec2_i32(max(vec2<i32>(2147483647i, 70570i), vec2<i32>(arg_2.c.a.d.x, -363i)), ~var_0.d))), _wgslsmith_f_op_vec2_f32(trunc(var_0.e)));
    var_0 = arg_1;
    let var_1 = select(select(vec2<bool>(true, select(true, arg_3 & true, func_3(Struct_3(Struct_2(arg_2.b), Struct_1(-32539i, vec4<f32>(arg_1.e.x, -823f, arg_2.b.b.x, 139f), var_0.c, arg_1.d, var_0.e), arg_2.c, arg_1.b.zzw), arg_2, vec4<i32>(arg_0, var_0.a, -2147483647i, arg_1.d.x)))), !vec2<bool>(!arg_3, true), !all(vec3<bool>(true, true, true))), vec2<bool>(all(select(!vec4<bool>(true, false, arg_3, arg_3), vec4<bool>(true, false, true, arg_3), true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_3, arg_3, arg_3, false), arg_3)) | any(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3)))), vec2<bool>(!arg_3 & !(arg_2.a.a.b.x <= -281f), arg_3));
    let var_2 = Struct_5(select(!select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, arg_3, true), arg_3), vec3<bool>(true, false, arg_3), any(var_1)), vec3<bool>(all(vec3<bool>(false, false, arg_3)), true, var_1.x), select(vec3<bool>(!var_1.x, false, true), !(!vec3<bool>(arg_3, arg_3, true)), !select(vec3<bool>(var_1.x, var_1.x, arg_3), vec3<bool>(true, arg_3, false), vec3<bool>(var_1.x, var_1.x, var_1.x)))), var_0.b.xx, vec4<bool>(var_1.x, false, any(!(!vec4<bool>(true, var_1.x, arg_3, arg_3))), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, arg_3, true), var_1.x))));
    return Struct_3(arg_2.a, Struct_1(-9831i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2038f) + -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_2.d.x)), _wgslsmith_f_op_f32(min(arg_1.e.x, -285f)))), -694f, arg_1.b.x), firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(u_input.b, arg_2.a.a.c.x), countOneBits(26145u))), vec2<i32>(arg_0, countOneBits(-arg_2.c.a.d.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e.x, var_0.e.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.b.xy))), all(!var_2.c)))), Struct_2(arg_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.a.e.x, _wgslsmith_f_op_f32(select(120f, arg_2.a.a.b.x, arg_3)), 1179f)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.b.x, -310f, var_2.b.x)))))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~((~(~vec2<u32>(u_input.b, u_input.b)) ^ ((vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))) | select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, u_input.b), vec2<bool>(true, false)))) ^ countOneBits(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(11324u, 0u), vec2<u32>(1u, 20854u)))));
    let var_1 = func_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-213f, -219f, 888f)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -60287i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 36638i, -3435i, 0i), vec4<i32>(-41623i, 0i, 83513i, -2147483647i)))) | -_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -15608i), vec2<i32>(1i, -493i), true), abs(vec2<i32>(33069i, 0i))), Struct_1(722i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1349f, -458f, _wgslsmith_div_f32(1000f, -1310f), _wgslsmith_div_f32(-242f, 347f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(274f, 568f, -1110f, 1969f), vec4<f32>(-907f, 761f, 415f, -234f)))), var_0, -_wgslsmith_mult_vec2_i32(select(vec2<i32>(10716i, 0i), vec2<i32>(-1i, 0i), true), -vec2<i32>(20527i, 2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, 427f) * vec2<f32>(-748f, 917f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1076f, 139f) - vec2<f32>(-349f, 1000f))))), Struct_3(Struct_2(Struct_1(1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, 1028f, 870f, 1877f)), ~vec2<u32>(1u, 0u), vec2<i32>(-20655i, -15686i) >> (var_0 % vec2<u32>(32u)), vec2<f32>(-1111f, -478f))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-12760i, -1i), min(1i, 1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(430f, -2094f, -406f, 319f), vec4<f32>(744f, -490f, -344f, 852f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1302f, 867f, -143f))), vec4<bool>(true, true, true, true))), reverseBits(var_0), ~vec2<i32>(1i, 1i), vec2<f32>(_wgslsmith_f_op_f32(select(-1186f, 1093f, false)), _wgslsmith_f_op_f32(-259f - -787f))), Struct_2(Struct_1(_wgslsmith_add_i32(29378i, -1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(167f, 221f, 125f, -1091f), vec4<f32>(1450f, 1169f, -978f, 558f), vec4<bool>(false, false, true, false))), _wgslsmith_mult_vec2_u32(vec2<u32>(32144u, 40580u), var_0), vec2<i32>(39374i, -15642i) >> (vec2<u32>(74037u, u_input.b) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(-390f, 660f), vec2<f32>(-490f, -173f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1539f, -1000f, 447f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, 565f, -1033f)), vec3<f32>(-576f, 896f, -834f), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))))), !(!(_wgslsmith_f_op_f32(select(-150f, 1588f, true)) <= _wgslsmith_f_op_f32(177f * 400f))));
    let var_2 = select(false && all(vec2<bool>(all(vec4<bool>(false, true, false, false)), true)), false, !(-706f >= _wgslsmith_f_op_f32(step(var_1.a.a.b.x, var_1.a.a.b.x))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -337f)), var_1.c.a.e.x, -936f);
    var var_4 = func_4(2147483647i, Struct_1(var_1.a.a.d.x, vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.a.b.x), var_3.x, _wgslsmith_f_op_f32(sign(-637f)), 688f), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 76599u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b), var_0), _wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 85456u), var_2), ~vec2<u32>(u_input.b, 34836u))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_1.a.a.a) ^ select(var_1.c.a.d, vec2<i32>(var_1.a.a.d.x, -40271i), vec2<bool>(var_2, var_2)), ~var_1.c.a.d), var_1.c.a.e), func_4(-1i, var_1.a.a, func_4(var_1.b.a, var_1.a.a, var_1, true), var_2), any(select(select(!vec3<bool>(true, false, var_2), select(vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, var_2, true), var_2), select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, true, false), vec3<bool>(false, var_2, var_2))), select(vec3<bool>(true, true, var_2), select(vec3<bool>(false, var_2, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), var_2), select(!vec3<bool>(var_2, var_2, true), select(vec3<bool>(false, var_2, var_2), vec3<bool>(true, false, var_2), true), var_1.c.a.b.x <= var_1.a.a.e.x)))).c;
    return var_1.c;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(arg_2, arg_2.a, arg_2, vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, 528f)), _wgslsmith_f_op_f32(-func_4(arg_2.a.d.x, Struct_1(arg_0, vec4<f32>(1000f, 832f, -869f, -543f), vec2<u32>(0u, u_input.b), arg_2.a.d, vec2<f32>(arg_2.a.e.x, -566f)), Struct_3(arg_2, arg_2.a, arg_2, arg_2.a.b.wyx), true).c.a.b.x), arg_2.a.b.x));
    var var_1 = Struct_5(!select(vec3<bool>(true, all(vec3<bool>(true, true, true)), 35607u <= var_0.c.a.c.x), vec3<bool>(true, true, false), all(vec4<bool>(false, true, false, false))), var_0.c.a.e, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), all(vec2<bool>(true, false))), select(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, true, true, false), true), true && select(false, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)))));
    var var_2 = ~firstTrailingBit(var_0.b.c.x);
    var var_3 = select(true, !var_1.c.x, all(var_1.c));
    var var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.a.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(400f, 618f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.a.e, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.b.x, var_1.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_0.c.a.e.x)), vec2<bool>(var_1.c.x, true))), any(var_1.a))) + vec2<f32>(var_0.c.a.b.x, 1000f)));
    return Struct_2(Struct_1(var_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1609f, 547f, var_1.b.x) * arg_2.a.b)) * _wgslsmith_f_op_vec4_f32(floor(arg_2.a.b))), ~_wgslsmith_add_vec2_u32(func_1().a.c, vec2<u32>(36198u, var_0.c.a.c.x)), vec2<i32>(30230i << (u_input.a % 32u), arg_2.a.d.x), var_0.c.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 27432i;
    let var_1 = Struct_4(true, Struct_3(func_5(2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(872f + 2473f)), func_1()), func_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(-22834i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(7843i, -33348i), vec2<i32>(-2147483647i, -4113i))), Struct_1(~2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1094f, -395f, 150f, -1951f) * vec4<f32>(-907f, -661f, -2556f, 967f)), ~vec2<u32>(u_input.a, 2924u), abs(vec2<i32>(var_0, var_0)), vec2<f32>(126f, 1000f)), func_4(_wgslsmith_add_i32(0i, var_0), func_1().a, Struct_3(Struct_2(Struct_1(var_0, vec4<f32>(226f, -1153f, 786f, -149f), vec2<u32>(17689u, 109701u), vec2<i32>(-9575i, 6749i), vec2<f32>(-239f, 1337f))), Struct_1(0i, vec4<f32>(-719f, 499f, -111f, 488f), vec2<u32>(u_input.a, u_input.b), vec2<i32>(var_0, -68108i), vec2<f32>(-1067f, -115f)), Struct_2(Struct_1(var_0, vec4<f32>(835f, -1694f, -482f, 242f), vec2<u32>(u_input.b, 0u), vec2<i32>(-17178i, 0i), vec2<f32>(1000f, -1042f))), vec3<f32>(-849f, -265f, -571f)), true), var_0 > func_5(var_0, -515f, Struct_2(Struct_1(var_0, vec4<f32>(-285f, -458f, -237f, 868f), vec2<u32>(16032u, 0u), vec2<i32>(47033i, var_0), vec2<f32>(-889f, -553f)))).a.a).a.a, func_5(abs(var_0) & (i32(-1i) * -1i), 1f, Struct_2(func_4(-20445i, Struct_1(var_0, vec4<f32>(375f, -1034f, 1167f, 486f), vec2<u32>(u_input.a, 4294967295u), vec2<i32>(0i, -2147483647i), vec2<f32>(-2097f, 1343f)), Struct_3(Struct_2(Struct_1(var_0, vec4<f32>(653f, -1757f, -2131f, 1561f), vec2<u32>(53709u, 38532u), vec2<i32>(var_0, 1i), vec2<f32>(301f, 1388f))), Struct_1(var_0, vec4<f32>(850f, -729f, 1404f, -681f), vec2<u32>(10376u, u_input.a), vec2<i32>(var_0, var_0), vec2<f32>(-1000f, -485f)), Struct_2(Struct_1(var_0, vec4<f32>(228f, -1546f, -139f, 1203f), vec2<u32>(81031u, u_input.a), vec2<i32>(var_0, -1i), vec2<f32>(719f, -620f))), vec3<f32>(-573f, 114f, -1029f)), false).b)), vec3<f32>(1000f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1462f + 1452f), _wgslsmith_f_op_f32(-1416f + 1315f)))), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(firstLeadingBit(u_input.a), func_5(var_0, -974f, Struct_2(Struct_1(1i, vec4<f32>(-496f, -555f, -448f, -557f), vec2<u32>(u_input.a, 4294967295u), vec2<i32>(31534i, var_0), vec2<f32>(-1000f, 207f)))).a.c.x)), ~func_4(-2147483647i, func_4(var_0, Struct_1(3123i, vec4<f32>(638f, -906f, -1070f, 1000f), vec2<u32>(u_input.a, 1u), vec2<i32>(14574i, var_0), vec2<f32>(-332f, -1196f)), Struct_3(Struct_2(Struct_1(-2147483647i, vec4<f32>(-1000f, -286f, 259f, -474f), vec2<u32>(u_input.a, u_input.b), vec2<i32>(var_0, -25284i), vec2<f32>(469f, -419f))), Struct_1(var_0, vec4<f32>(-1918f, -975f, -150f, -846f), vec2<u32>(4294967295u, 28098u), vec2<i32>(var_0, 1i), vec2<f32>(375f, -1000f)), Struct_2(Struct_1(var_0, vec4<f32>(-464f, -840f, -327f, -959f), vec2<u32>(4294967295u, u_input.b), vec2<i32>(var_0, var_0), vec2<f32>(1333f, 1117f))), vec3<f32>(-2453f, -889f, 694f)), true).a.a, func_4(var_0, Struct_1(var_0, vec4<f32>(1523f, 1000f, 1506f, -559f), vec2<u32>(u_input.a, 16572u), vec2<i32>(-2147483647i, var_0), vec2<f32>(1612f, 388f)), Struct_3(Struct_2(Struct_1(var_0, vec4<f32>(-183f, 1501f, -764f, -727f), vec2<u32>(22793u, u_input.a), vec2<i32>(-38121i, -2147483647i), vec2<f32>(642f, -360f))), Struct_1(var_0, vec4<f32>(1317f, 654f, 1211f, -306f), vec2<u32>(1u, u_input.b), vec2<i32>(var_0, var_0), vec2<f32>(-1154f, -273f)), Struct_2(Struct_1(var_0, vec4<f32>(1006f, 183f, 1168f, 248f), vec2<u32>(13141u, 88135u), vec2<i32>(var_0, -2147483647i), vec2<f32>(-971f, 610f))), vec3<f32>(385f, -284f, 102f)), false), false).c.a.c), func_3(func_4(~2147483647i, func_5(~var_0, 432f, func_5(var_0, -1405f, Struct_2(Struct_1(var_0, vec4<f32>(-971f, 1712f, -1000f, 798f), vec2<u32>(u_input.a, u_input.b), vec2<i32>(20596i, var_0), vec2<f32>(673f, 358f))))).a, func_4(i32(-1i) * -10497i, func_1().a, Struct_3(Struct_2(Struct_1(-9618i, vec4<f32>(-817f, -489f, 321f, -1984f), vec2<u32>(1u, u_input.b), vec2<i32>(41164i, -49376i), vec2<f32>(-1024f, 807f))), Struct_1(2147483647i, vec4<f32>(-1336f, -748f, -664f, 398f), vec2<u32>(u_input.a, 58315u), vec2<i32>(var_0, 0i), vec2<f32>(1512f, -1000f)), Struct_2(Struct_1(var_0, vec4<f32>(-1530f, -253f, 702f, -252f), vec2<u32>(4294967295u, 1u), vec2<i32>(1i, 47576i), vec2<f32>(490f, 2014f))), vec3<f32>(287f, -1080f, 739f)), any(vec2<bool>(false, true))), true), Struct_3(func_1(), func_1().a, Struct_2(func_4(var_0, Struct_1(0i, vec4<f32>(-417f, -906f, -184f, -351f), vec2<u32>(u_input.a, u_input.b), vec2<i32>(var_0, -110780i), vec2<f32>(512f, 384f)), Struct_3(Struct_2(Struct_1(-2147483647i, vec4<f32>(-1021f, 1000f, -657f, -488f), vec2<u32>(0u, 87763u), vec2<i32>(var_0, var_0), vec2<f32>(-462f, -1009f))), Struct_1(-15810i, vec4<f32>(314f, -898f, -1536f, 1599f), vec2<u32>(42373u, 4294967295u), vec2<i32>(0i, 1i), vec2<f32>(-1353f, -1206f)), Struct_2(Struct_1(var_0, vec4<f32>(-1401f, 260f, -489f, -728f), vec2<u32>(u_input.a, 44095u), vec2<i32>(var_0, -38625i), vec2<f32>(-1000f, -845f))), vec3<f32>(-187f, -1822f, 894f)), true).c.a), vec3<f32>(1f, 1f, 1f)), -countOneBits(vec4<i32>(0i, 18326i, 19020i, -21950i) & vec4<i32>(-2147483647i, var_0, var_0, 1i))), select(!vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(false, false, abs(var_0) <= -var_0), vec3<bool>(u_input.a < ~u_input.a, true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))));
    let var_2 = !(!var_1.e.yz);
    var var_3 = Struct_3(var_1.b.c, Struct_1(var_1.b.a.a.a, var_1.b.c.a.b, var_1.c, vec2<i32>(-58605i, -1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -929f))), Struct_2(Struct_1(var_0, var_1.b.a.a.b, vec2<u32>(1u, 4294967295u), -vec2<i32>(var_0, var_0), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_1.b.b.b.yx, vec2<f32>(243f, -3065f), vec2<bool>(var_2.x, false))))))), vec3<f32>(var_1.b.d.x, _wgslsmith_f_op_f32(trunc(var_1.b.d.x)), _wgslsmith_f_op_f32(197f - -908f)));
    var_3 = Struct_3(func_5(4935i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.c.a.e.x)) - var_1.b.b.e.x)), var_3.c), Struct_1(-33279i, var_3.a.a.b, (var_1.b.b.c << (~var_1.b.a.a.c % vec2<u32>(32u))) | var_3.a.a.c, -vec2<i32>(var_0, var_3.a.a.a), vec2<f32>(940f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.a.e.x) - _wgslsmith_f_op_f32(min(var_1.b.c.a.b.x, var_1.b.b.e.x))))), Struct_2(func_5(-14617i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2070f)))), Struct_2(func_5(var_3.b.d.x, var_1.b.b.b.x, Struct_2(Struct_1(var_3.a.a.a, vec4<f32>(var_3.a.a.b.x, 1899f, var_3.d.x, 766f), var_3.b.c, vec2<i32>(76117i, var_1.b.c.a.d.x), vec2<f32>(485f, -377f)))).a)).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.b.d), _wgslsmith_f_op_vec3_f32(var_1.b.a.a.b.xzx - var_3.d))), vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(var_3.a.a.e.x)), _wgslsmith_f_op_f32(abs(var_1.b.d.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.b.b.xzy))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.d, ~select(firstLeadingBit(~vec4<i32>(-3042i, -1i, 7677i, -47746i)), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0, var_0), func_5(-2129i, 752f, Struct_2(Struct_1(var_0, vec4<f32>(var_1.b.b.b.x, 833f, var_1.b.c.a.b.x, -1237f), var_3.b.c, var_3.b.d, vec2<f32>(var_1.b.a.a.b.x, var_3.d.x)))).a.d.x, abs(-9270i), var_3.a.a.d.x), !vec4<bool>(var_1.a, true, false, false)));
}

