struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> vec3<i32> {
    return arg_0.c;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    var var_1 = ~countOneBits(abs(22084u));
    var var_2 = Struct_4(vec3<bool>(false, true, (arg_0.a.x > (arg_0.a.x >> (14697u % 32u))) || select(true, true, all(vec2<bool>(true, true)))), Struct_1(0u, 0i, func_3(Struct_1(~arg_2.x, 2147483647i, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, 22770i), vec3<i32>(arg_0.a.x, 54676i, arg_0.a.x)), var_0, false), arg_0.a.x, vec4<bool>(false, any(vec2<bool>(true, true)), true, true), true), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -427f)))), 15584u != arg_2.x), Struct_3(arg_0, arg_0.a.x), Struct_1(_wgslsmith_mod_u32(~4294967295u, arg_2.x), -3098i, vec3<i32>(arg_0.a.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, 58215i, arg_0.a.x), vec3<i32>(-1191i, arg_0.a.x, arg_0.a.x)), _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x ^ arg_0.a.x)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), -821f > _wgslsmith_f_op_f32(step(-669f, _wgslsmith_f_op_f32(-var_0)))), Struct_1(_wgslsmith_mult_u32(abs(countOneBits(4294967295u)), u_input.a), arg_0.a.x, vec3<i32>(min(~10388i, _wgslsmith_clamp_i32(1i, -2147483647i, 1i)), select(arg_0.a.x, arg_0.a.x ^ arg_0.a.x, any(vec2<bool>(false, true))), i32(-1i) * -14336i), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(floor(-931f))), !all(vec4<bool>(true, true, true, true))));
    return var_2.d.d;
}

fn func_1() -> vec4<f32> {
    let var_0 = 1i;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-12872i, max(6016i, 36392i))), -vec2<i32>(reverseBits(20978i), -var_0)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(179f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1591f, -231f), _wgslsmith_f_op_f32(select(-563f, -756f, false))), _wgslsmith_f_op_f32(func_2(Struct_2(vec2<i32>(-2147483647i, var_1.a.x)), 1u, vec4<u32>(15433u, u_input.a, u_input.a, u_input.a))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) - _wgslsmith_f_op_f32(round(295f))));
    var_1 = Struct_2(~_wgslsmith_sub_vec2_i32(var_1.a, select(var_1.a, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(var_1.a.x, var_1.a.x)), false)));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, var_2.x, 284f, var_2.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(414f, -1722f, -512f, 530f) * vec4<f32>(var_2.x, -287f, -139f, var_2.x)))), vec4<f32>(1405f, _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(min(var_2.x, var_2.x)), _wgslsmith_f_op_f32(1039f - var_2.x)))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xwy));
    global0 = array<vec2<bool>, 31>();
    let var_1 = Struct_1(_wgslsmith_mult_u32(0u, ~90072u), arg_2.x & -(~0i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, ~arg_2.x, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_2.x, arg_2.x, 0i))) ^ arg_2, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x >> (57953u % 32u), -1777i, arg_2.x), abs(vec3<i32>(arg_2.x, -5429i, arg_2.x) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-1847i, 24422i), vec2<i32>(1i, arg_2.x))), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~4294967295u), ~(~vec4<u32>(27511u, 38802u, 46298u, u_input.a)))))), !(!(!(arg_2.x < arg_2.x))));
    var var_2 = Struct_2(var_1.c.yy);
    let var_3 = Struct_2(var_1.c.zz);
    return vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) | !var_1.e, any(select(!(!vec4<bool>(var_1.e, var_1.e, var_1.e, false)), !select(vec4<bool>(var_1.e, true, var_1.e, var_1.e), vec4<bool>(true, false, true, false), vec4<bool>(true, true, var_1.e, var_1.e)), !any(vec3<bool>(var_1.e, var_1.e, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_4(Struct_5(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a)), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1440f, 379f, 168f, -341f)))), vec3<i32>(-(~(-88342i)), _wgslsmith_clamp_i32(~(-8537i), -7878i, -16907i), 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1137f, 2185f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1606f, 758f)))));
    global0 = array<vec2<bool>, 31>();
    global0 = array<vec2<bool>, 31>();
    var var_1 = Struct_5(_wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(54288u), ~u_input.a, 54942u) ^ vec3<u32>(firstLeadingBit(u_input.a), u_input.a, u_input.a), countOneBits(~min(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)))), ~_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(20374u, u_input.a), vec2<u32>(16055u, 48100u))), min(_wgslsmith_mult_u32(u_input.a, u_input.a), abs(17717u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(-1381f, _wgslsmith_f_op_vec4_f32(func_1()).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -644f))) + -267f), -339f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 1000f, 390f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(ceil(284f)), _wgslsmith_f_op_f32(777f * 369f)), true)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1094f, 561f, 744f), vec3<f32>(403f, -621f, -208f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-618f, -1504f, 379f)))), vec3<bool>(false, var_0.x, var_0.x))))));
    var var_3 = Struct_2(countOneBits(vec2<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(11443i, -28562i), -2147483647i, _wgslsmith_div_i32(-30507i, -3856i)))));
    let var_4 = Struct_5(var_1.a, (~(0u >> (var_1.a.x % 32u)) ^ u_input.a) ^ 32957u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(830f - var_2.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1170f))))) * var_2.x), _wgslsmith_f_op_vec2_f32(var_2.zy + _wgslsmith_f_op_vec2_f32(var_2.zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.zx * var_2.xy)))));
}

