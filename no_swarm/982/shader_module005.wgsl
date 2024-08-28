struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1537f, arg_0, -233f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1464f, -2299f, arg_0, -937f)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2184f, -1369f, 397f, 459f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(147f, 1000f, arg_0, -159f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))), 321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -149f))), 798f)));
    let var_1 = vec3<bool>((~select(arg_1.x, 1i, false) < ~(arg_1.x >> (4294967295u % 32u))) && !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), any(vec2<bool>(all(vec3<bool>(true, true, true)), !any(vec3<bool>(false, true, true)))), all(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, arg_1.x <= 1i))));
    var var_2 = abs(_wgslsmith_mod_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(global0.x, 2147483647i), ~(-1i) & abs(global0.x), _wgslsmith_mult_i32(countOneBits(0i), arg_1.x)), _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, 47642i), vec3<i32>(2147483647i, global0.x, global0.x))), vec3<i32>(countOneBits(2147483647i), _wgslsmith_sub_i32(-12205i, -1i), -77028i), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2027i, -2147483647i), vec3<i32>(arg_1.x, 50290i, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-20340i, -1i, 0i), vec3<i32>(-1i, global0.x, -3253i))))));
    var var_3 = i32(-1i) * -2147483647i;
    var var_4 = Struct_2(!select(var_1.xy, vec2<bool>(false, all(var_1)), var_1.x), _wgslsmith_div_vec2_f32(vec2<f32>(1525f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - arg_0)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, 1003f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f - arg_0)), 1847f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f * 828f)), var_0.x)));
    return select(select(vec3<bool>(var_4.a.x, false, var_1.x | all(var_4.a)), !select(vec3<bool>(false, var_4.a.x, true), !var_1, true), -1i >= firstTrailingBit(_wgslsmith_sub_i32(var_2.x, global0.x))), vec3<bool>(var_4.a.x, var_1.x, false), select(var_1, select(select(vec3<bool>(true, false, false), var_1, true), !(!var_1), select(!var_1, select(vec3<bool>(var_4.a.x, true, true), vec3<bool>(var_4.a.x, var_4.a.x, var_1.x), var_1), var_4.a.x)), !vec3<bool>(true, var_4.a.x == var_4.a.x, var_1.x)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(32496i, global0.x << (~u_input.c.x % 32u), (_wgslsmith_mod_i32(1i, 19784i) << (u_input.c.x % 32u)) >> (~_wgslsmith_mult_u32(1u, 29466u) % 32u)), select(abs(vec3<i32>(global0.x, global0.x, ~(-52869i))), vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 23779i, global0.x), vec3<i32>(global0.x, global0.x, -1i))), _wgslsmith_mod_i32(global0.x, global0.x) << (64792u % 32u), 27422i), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 1917f), _wgslsmith_f_op_f32(min(671f, 1821f))), _wgslsmith_add_vec2_i32(global0.yy, vec2<i32>(global0.x, -26791i)))));
    global0 = abs(abs(countOneBits(select(vec3<i32>(-9483i, -1i, -1i), firstLeadingBit(vec3<i32>(8588i, global0.x, 40306i)), vec3<bool>(true, true, true)))));
    var var_0 = Struct_2(func_3(_wgslsmith_f_op_f32(sign(750f)), firstLeadingBit(max(vec2<i32>(-49936i, 10878i), global0.zz))).yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-876f * -439f), _wgslsmith_f_op_f32(f32(-1f) * -1757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-294f + 1272f)));
    var var_1 = var_0.c;
    var var_2 = _wgslsmith_mod_i32(-1i, -global0.x);
    return -356f;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1183f * _wgslsmith_f_op_f32(sign(-3017f))))));
    var var_1 = vec4<bool>(any(!vec4<bool>(-51360i != arg_1.x, true, false, true)), true, (_wgslsmith_mod_i32(~arg_1.x, ~(-22242i)) << (min(6576u, ~19494u) % 32u)) <= -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, -41759i, arg_1.x), vec4<i32>(-28188i, 1i, global0.x, 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-349f)) * _wgslsmith_f_op_f32(933f + -541f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) * 1000f)) >= -2068f);
    var_1 = select(!select(select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true), vec4<bool>(any(var_1.xw), false, true, true), select(!vec4<bool>(false, false, false, var_1.x), !vec4<bool>(true, true, var_1.x, false), vec4<bool>(true, true, true, true))), !select(vec4<bool>(var_1.x && var_1.x, var_1.x, any(vec4<bool>(var_1.x, true, var_1.x, false)), any(vec4<bool>(false, var_1.x, false, false))), vec4<bool>(var_1.x, false, var_1.x, var_1.x), all(vec3<bool>(false, true, true))), vec4<bool>(!select(var_1.x, var_1.x, !var_1.x), all(!vec2<bool>(var_1.x, false)) && any(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, false))), (~global0.x >> (firstLeadingBit(arg_0) % 32u)) == 1i, var_1.x));
    var_0 = 427f;
    var var_2 = 1u;
    return vec4<bool>(var_1.x, true, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-375f, -1121f, -1271f, -432f) - vec4<f32>(143f, 492f, 327f, -549f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(621f, var_0.x, true))), _wgslsmith_f_op_f32(sign(633f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, false)), -1842f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1405f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 931f, 619f, -1164f))))));
    let var_1 = true;
    let var_2 = select(select(select(select(func_1(17967u, vec2<i32>(global0.x, global0.x)), !vec4<bool>(var_1, false, var_1, true), func_1(u_input.d, global0.zy)), !(!vec4<bool>(false, var_1, false, var_1)), any(vec2<bool>(var_1, var_1))), func_1(~u_input.a.x, abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -9184i), global0.xy))), select(var_1, true, true)), !select(vec4<bool>(-1i != global0.x, select(false, false, var_1), true, var_1), select(!vec4<bool>(true, false, var_1, var_1), select(vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, false, false)), true), select(select(vec4<bool>(true, false, false, var_1), vec4<bool>(false, var_1, false, var_1), vec4<bool>(var_1, var_1, false, var_1)), !vec4<bool>(var_1, var_1, var_1, var_1), false)), true);
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-131f * var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), -628f)));
    global0 = -(_wgslsmith_add_vec3_i32(-vec3<i32>(global0.x, global0.x, 3872i), ~vec3<i32>(18212i, 2013i, 15521i)) << (u_input.a.wyy % vec3<u32>(32u))) >> (u_input.a.xzw % vec3<u32>(32u));
    let var_3 = Struct_1(u_input.d, ~abs(1u), u_input.b);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -1826f, -501f, 710f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * vec4<f32>(685f, var_0.x, 232f, -721f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, -478f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1714f, 331f, var_0.x), vec4<f32>(var_0.x, -944f, var_0.x, var_0.x)))), var_2.x)), select(select(vec4<bool>(var_2.x, false, true, var_2.x), !var_2, vec4<bool>(var_2.x, var_1, true, false)), var_2, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-319f + var_0.x))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -539f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -576f, var_0.x) - vec4<f32>(var_0.x, 793f, 1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 996f, 572f, 780f)))))))));
    global0 = _wgslsmith_div_vec3_i32(~(firstLeadingBit(vec3<i32>(global0.x, global0.x, global0.x)) | _wgslsmith_add_vec3_i32(vec3<i32>(10322i, global0.x, -55029i), vec3<i32>(global0.x, global0.x, 15816i))) >> (select(vec3<u32>(var_3.c, ~1u, 70104u), ~_wgslsmith_mult_vec3_u32(u_input.a.wxx, u_input.a.yzw), var_2.x) % vec3<u32>(32u)), vec3<i32>(abs(_wgslsmith_add_i32(-788i << (var_3.a % 32u), abs(global0.x))), -11064i, countOneBits(12795i)));
    let x = u_input.a;
    s_output = StorageBuffer(17079u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -774f) - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(floor(var_0.x))))))), u_input.a.x, vec3<f32>(-1208f, var_0.x, 343f), select(vec2<u32>(~(u_input.c.x << (1u % 32u)), u_input.b), vec2<u32>(~(~0u), 0u), vec2<bool>(all(func_1(var_3.b, global0.zy).xzz), func_3(205f, reverseBits(global0.xz)).x)));
}

