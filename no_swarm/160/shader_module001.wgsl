struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(-24360i, true, vec2<bool>(true, false), i32(-2147483648));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = Struct_3(vec3<u32>(firstTrailingBit(4294967295u) >> ((~0u << (u_input.a.x % 32u)) % 32u), ~1u, ~u_input.a.x), _wgslsmith_f_op_f32(-arg_1.x), Struct_2(!(!select(vec4<bool>(global0.x, false, global1.b, global0.x), vec4<bool>(global1.c.x, global1.b, false, global0.x), vec4<bool>(global1.c.x, false, global1.b, false))), _wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(853f, 1000f)), _wgslsmith_f_op_vec2_f32(-arg_1))), -(vec2<i32>(global1.a, arg_0.x) << (vec2<u32>(u_input.a.x, 17823u) % vec2<u32>(32u))) << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -118f), _wgslsmith_f_op_f32(var_0.b + var_0.b))) - _wgslsmith_f_op_f32(abs(var_0.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-555f, _wgslsmith_f_op_f32(step(770f, 1751f)), _wgslsmith_f_op_f32(ceil(var_0.c.b.x)), _wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(880f, -904f, var_0.b, -157f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-551f, -1000f, var_0.b, var_0.c.b.x) + vec4<f32>(arg_1.x, arg_1.x, 899f, 995f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(694f, var_0.c.b.x, _wgslsmith_f_op_f32(-arg_1.x), -1122f))));
    global0 = !select(select(vec4<bool>(false, var_0.c.a.x, all(var_0.c.a), true), !var_0.c.a, select(select(vec4<bool>(true, false, false, var_0.c.a.x), var_0.c.a, var_0.c.a), !vec4<bool>(true, var_0.c.a.x, false, global0.x), any(vec3<bool>(global1.c.x, false, global0.x)))), vec4<bool>((var_0.c.a.x && false) || !global0.x, global0.x || (global1.c.x || global1.c.x), false, all(var_0.c.a.yyw)), var_0.c.a);
    var var_3 = Struct_2(select(var_0.c.a, vec4<bool>(any(vec3<bool>(false, true, global1.b)), var_0.c.a.x, true, false), select(vec4<bool>(var_0.c.a.x | true, false, true, true), !vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), select(all(var_0.c.a), var_0.c.a.x, false & var_0.c.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.wx, _wgslsmith_f_op_vec2_f32(-var_2.ww)) - vec2<f32>(_wgslsmith_f_op_f32(select(262f, 1198f, global0.x)), arg_1.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.c.b, vec2<f32>(-1477f, -663f)))), var_2.xz)), vec2<i32>(~67091i, ~(~arg_0.x)) << (u_input.a % vec2<u32>(32u)));
    return countOneBits(~(~min(var_0.a.x, _wgslsmith_add_u32(27564u, 14192u))));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    global0 = vec4<bool>(all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, arg_0.x, false), global0.x), !(!vec4<bool>(global1.c.x, false, global0.x, true)), !(!vec4<bool>(true, arg_0.x, global0.x, arg_0.x)))), any(select(vec3<bool>(global0.x, true, !global1.c.x), vec3<bool>(true, arg_0.x | arg_0.x, true), any(vec3<bool>(global0.x, global1.b, false)))), global1.c.x, arg_0.x);
    var var_0 = vec2<u32>(0u, func_3(~vec4<i32>(global1.a, global1.a, global1.a, global1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2235f, -183f) - vec2<f32>(-644f, -801f))) >> (~func_3(vec4<i32>(global1.a, 0i, -2147483647i, global1.d), vec2<f32>(1177f, -443f)) % 32u)) & abs(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 60482u), u_input.a));
    var var_1 = u_input.a.x;
    var_1 = func_3(vec4<i32>(~(~global1.a ^ global1.d), 0i, -18149i, (-1i | _wgslsmith_div_i32(global1.d, 2147483647i)) ^ ~(-28650i)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-677f + 181f) + 1061f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1354f))))));
    var var_2 = Struct_3(vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, u_input.a.x, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, 1u), vec3<u32>(1u, var_0.x, 1u))), u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(258f + _wgslsmith_f_op_f32(min(-944f, 280f)))))), Struct_2(vec4<bool>(select(true, select(true, false, global0.x), all(vec4<bool>(arg_0.x, false, global0.x, true))), global1.b && arg_0.x, global0.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1788f, -264f))))), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, global1.d, global1.a) << ((var_0.x << (0u % 32u)) % 32u), global1.d)));
    return countOneBits(-var_2.c.c.x);
}

fn func_1() -> Struct_2 {
    var var_0 = global1.a;
    let var_1 = u_input.a;
    global1 = Struct_1(~(~(~func_2(global1.c))), true, !(!global0.xz), -abs(_wgslsmith_sub_i32(global1.d, 44707i >> (var_1.x % 32u))));
    global0 = vec4<bool>(!(!all(vec3<bool>(true, global0.x, global1.b))), true, !global0.x, false);
    let var_2 = Struct_2(!select(vec4<bool>(u_input.a.x > var_1.x, global1.b, true, global1.b), vec4<bool>(global1.b, var_1.x == u_input.a.x, select(true, global1.b, false), global1.d >= -41567i), vec4<bool>(global0.x, global0.x, global1.c.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2380f, -1680f), vec2<f32>(-1117f, -515f))))), vec2<f32>(-895f, _wgslsmith_f_op_f32(-885f + 1551f)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, 949f, true)), _wgslsmith_f_op_f32(-170f + -751f)), 1350f)), min(~vec2<i32>(global1.d, -3053i), vec2<i32>(global1.d, select(-1i, reverseBits(2147483647i), global0.x))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global1 = Struct_1(~(-1i), false, vec2<bool>(true | (abs(arg_1.c.x) == -10948i), global1.c.x), arg_1.c.x);
    global1 = Struct_1(~2071i, true, !vec2<bool>(true || arg_0.c.a.x, _wgslsmith_f_op_f32(select(arg_1.b.x, 372f, global1.c.x)) >= _wgslsmith_f_op_f32(arg_1.b.x * arg_0.b)), firstTrailingBit(1i));
    global1 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.c.c.x ^ -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0.c.c.x, -13054i), vec3<i32>(1i, arg_1.c.x, -5056i)), vec3<i32>(66345i, 0i, global1.d))), 0i, ~_wgslsmith_mod_i32(-1392i, ~arg_0.c.c.x)), any(vec4<bool>(arg_1.a.x, any(global0.zx), func_1().a.x, !arg_0.c.a.x & arg_0.c.a.x)), vec2<bool>(true, -arg_0.c.c.x < global1.d), arg_1.c.x);
    global1 = Struct_1(29144i, all(select(vec4<bool>(true, false, true, arg_0.c.a.x), arg_0.c.a, all(vec2<bool>(false, true)))) | all(func_1().a.yy), vec2<bool>(select(!(!arg_1.a.x), !(1u > u_input.a.x), arg_1.a.x & true), all(global0.wxx)), _wgslsmith_sub_i32(arg_1.c.x, firstLeadingBit(firstLeadingBit(-85456i))));
    let var_0 = Struct_1(global1.d, arg_1.a.x, !select(arg_0.c.a.xz, arg_0.c.a.yw, true), _wgslsmith_add_i32(-(~abs(1i)), 0i));
    return Struct_2(vec4<bool>(!(!all(arg_1.a)), false, false, any(vec4<bool>(var_0.d < 5088i, all(global0.wz), var_0.b, arg_1.a.x))), vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_0.b)), ~arg_0.c.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3((_wgslsmith_mod_vec3_u32(vec3<u32>(37340u, u_input.a.x, 1u), vec3<u32>(29184u, 55906u, u_input.a.x)) | vec3<u32>(16323u, u_input.a.x, 4294967295u)) & _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 5256u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1339f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(410f, -1345f))), func_1()), func_1());
    var var_1 = func_4(Struct_3(vec3<u32>(u_input.a.x, min(1u, 0u), min(u_input.a.x, u_input.a.x)) >> (vec3<u32>(~u_input.a.x, u_input.a.x, ~u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) * _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), func_4(Struct_3(~vec3<u32>(16335u, 22115u, 20177u), func_4(Struct_3(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), -929f, var_0), var_0).b.x, var_0), var_0)), func_1());
    var var_2 = countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 1u, 68713u), ~firstLeadingBit(vec3<u32>(4294967295u, 33191u, u_input.a.x))), _wgslsmith_mult_vec3_u32((vec3<u32>(u_input.a.x, u_input.a.x, 50781u) | vec3<u32>(0u, 32303u, 33262u)) | ~vec3<u32>(1u, u_input.a.x, 14492u), ~firstTrailingBit(vec3<u32>(18360u, 1u, u_input.a.x))), vec3<u32>(~0u, ~4294967295u, func_3(firstLeadingBit(vec4<i32>(65180i, 2147483647i, 50116i, -4397i)), vec2<f32>(752f, -1000f)))));
    let var_3 = _wgslsmith_f_op_f32(-351f + _wgslsmith_f_op_f32(abs(var_1.b.x)));
    global0 = var_1.a;
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f + 351f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(14285u, var_2.x, u_input.a.x, var_2.x), vec4<u32>(var_2.x, var_2.x, 0u, 1u))), _wgslsmith_mod_u32(~u_input.a.x, max(_wgslsmith_sub_u32(var_2.x, var_2.x), u_input.a.x ^ 46837u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_3, var_0.b.x, 1000f, var_1.b.x), vec4<f32>(-367f, var_1.b.x, 1744f, var_3)))))));
}

