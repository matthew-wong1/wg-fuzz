struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = Struct_2(vec4<u32>(u_input.b.x, min(~1u, u_input.a.x), u_input.b.x, _wgslsmith_div_u32(51404u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, 17650u, u_input.b.x), ~63702u))), arg_0, -(~(~abs(vec4<i32>(-27047i, -32297i, arg_0.x, arg_0.x)))), Struct_1(vec4<i32>(0i >> (1u % 32u), _wgslsmith_add_i32(2945i, arg_0.x), firstLeadingBit(2147483647i), -2147483647i), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1435f, -348f, -1000f, -374f) * vec4<f32>(-445f, -535f, 316f, -1017f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2939f, -915f, 333f, -145f) - vec4<f32>(-1000f, -629f, 638f, -609f))), any(vec3<bool>(true, true, true)))), vec3<bool>(false, true, all(vec4<bool>(true, false, false, true)) || false), vec2<i32>(max(~arg_0.x, arg_0.x), _wgslsmith_add_i32(13174i, _wgslsmith_mult_i32(arg_0.x, arg_0.x)))));
    var_0 = Struct_2(vec4<u32>(var_0.a.x, 66785u, var_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.a.x, u_input.b.x), u_input.b.x), abs(_wgslsmith_div_vec2_u32(vec2<u32>(10742u, 0u), var_0.a.wy)))), arg_0, ~(-var_0.d.a), var_0.d);
    var_0 = Struct_2(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u << (var_0.a.x % 32u), u_input.a.x, var_0.a.x, 1771u), firstLeadingBit(~vec4<u32>(u_input.a.x, 0u, var_0.a.x, u_input.b.x)))), vec2<i32>(1i, -45566i), var_0.c, Struct_1(var_0.c, vec3<bool>(any(vec3<bool>(var_0.d.b.x, false, true)), any(vec3<bool>(false, true, false)), all(vec4<bool>(true, var_0.d.d.x, var_0.d.b.x, var_0.d.d.x))), var_0.d.c, var_0.d.b, vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(var_0.c.x), ~var_0.d.a.x), arg_0.x)));
    let var_1 = Struct_1(abs(max(~vec4<i32>(0i, arg_0.x, 2147483647i, var_0.d.e.x), ~(~var_0.d.a))), select(var_0.d.d, !select(select(var_0.d.b, vec3<bool>(false, var_0.d.d.x, false), var_0.d.b.x), vec3<bool>(var_0.d.d.x, var_0.d.d.x, var_0.d.b.x), false), vec3<bool>(false, true, true | all(vec3<bool>(var_0.d.b.x, var_0.d.b.x, var_0.d.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.c.x + _wgslsmith_f_op_f32(-var_0.d.c.x)))), _wgslsmith_f_op_f32(-258f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-772f)))), 493f, _wgslsmith_f_op_f32(-var_0.d.c.x)), var_0.d.d, vec2<i32>(-_wgslsmith_mult_i32(-16796i, -102913i) << (~_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.b.x) % 32u), var_0.d.e.x));
    var var_2 = ~var_1.a >> (min(_wgslsmith_mod_vec4_u32(vec4<u32>(91576u, 193u, var_0.a.x, var_0.a.x), u_input.b) & var_0.a, u_input.b) % vec4<u32>(32u));
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1317f, -1121f, -572f))) + vec3<f32>(364f, -1113f, -937f))))));
    var var_1 = u_input.b.x;
    var var_2 = vec3<bool>(true, (5353i != countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 1i, -2147483647i), vec4<i32>(-33575i, 10134i, 0i, 0i)))) && any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true)), true);
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_add_i32(-12364i, 0i), func_3(vec2<i32>(35637i, 1i)), -min(-48118i, 0i)), vec4<i32>(-1i, _wgslsmith_add_i32(func_3(vec2<i32>(-2147483647i, 12348i)), -9382i), -select(0i, 1264i, false), 4636i)), !select(!select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, false, true), var_2.x), vec3<bool>(true, false, any(vec4<bool>(var_2.x, false, false, false))), !select(vec3<bool>(var_2.x, false, true), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 124f, var_0.x, -1692f)))), vec4<f32>(2017f, var_0.x, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), -1075f), true)))), select(select(select(select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, true, var_2.x), false), !vec3<bool>(var_2.x, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(var_2.x, false, false), !vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, true, true)), var_2.x), !select(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, false, var_2.x), true), select(vec3<bool>(false, true, true), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, true, var_2.x)), !vec3<bool>(true, true, var_2.x)), select(select(!vec3<bool>(var_2.x, false, var_2.x), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false)), !var_2.x), vec3<bool>(true, all(vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !var_2.x), true)), -((vec2<i32>(1i, 1i) << (abs(vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))) & vec2<i32>(1i, _wgslsmith_clamp_i32(-1i, 35155i, 2147483647i))));
    var_2 = var_3.d;
    return Struct_2(u_input.b, vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_div_i32(-28707i, -1i), ~var_3.e.x), vec4<i32>(reverseBits(~_wgslsmith_add_i32(var_3.a.x, var_3.a.x)), countOneBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_3.e.x, var_3.a.x), -1812i | var_3.e.x)), max(-(0i << (0u % 32u)), _wgslsmith_dot_vec3_i32(~var_3.a.zyw, vec3<i32>(var_3.e.x, var_3.e.x, var_3.a.x))), _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-30825i, var_3.e.x, var_3.a.x), vec3<i32>(var_3.a.x, var_3.a.x, -68113i), vec3<bool>(var_2.x, var_3.d.x, true)), vec3<i32>(21842i, var_3.e.x, var_3.a.x)))), Struct_1(select(~vec4<i32>(1i, 24078i, 1i, -66790i) << (~vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(var_3.a.x, var_3.e.x, -1i, 44117i), var_2.x), var_3.d, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(412f + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1470f + -1006f)), 370f), select(vec3<bool>(var_2.x | var_2.x, any(var_3.b), any(var_3.d)), var_3.b, !(!var_3.d.x)), ~(vec2<i32>(var_3.a.x, 37430i) ^ vec2<i32>(2147483647i, var_3.a.x)) ^ vec2<i32>(29867i, var_3.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = Struct_2(max(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, u_input.a.x, u_input.b.x, 4441u) << (var_0.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(var_0.a, u_input.b)) ^ vec4<u32>(arg_1.x, select(1u, var_0.a.x, arg_0.d.d.x), _wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x), 1u), reverseBits(min(u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 1u, arg_0.a.x, u_input.b.x), u_input.b, u_input.b)))), ~(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, var_0.c.x), reverseBits(arg_0.b)) & -(var_0.b & var_0.b)), -(~firstLeadingBit(-var_0.c)), arg_0.d);
    var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f))));
    return Struct_3(select(min(vec2<i32>(~var_1.c.x, -4298i), _wgslsmith_mod_vec2_i32(select(var_0.d.a.yz, vec2<i32>(45973i, arg_0.d.a.x), vec2<bool>(var_0.d.d.x, true)), -arg_0.c.zw)), vec2<i32>(~func_2().b.x, var_1.c.x), vec2<bool>(arg_0.d.b.x, !(arg_0.d.c.x > 1123f))), ~arg_0.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.d.c.yw, vec2<f32>(-1327f, -382f)))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.c.x), _wgslsmith_f_op_f32(min(var_2, var_1.d.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.d.c.wy)))))), func_2().a.xzy, Struct_2(vec4<u32>(u_input.a.x, 38539u, _wgslsmith_div_u32(~72698u, _wgslsmith_div_u32(arg_0.a.x, var_0.a.x)), ~1u), _wgslsmith_sub_vec2_i32(-abs(vec2<i32>(arg_0.b.x, -83542i)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(71195i, -2147483647i), var_1.d.e), ~arg_0.d.a.zx)), vec4<i32>(-10670i >> (firstTrailingBit(u_input.a.x) % 32u), ~(-2147483647i), 21673i, _wgslsmith_div_i32(var_1.b.x, arg_0.b.x)), func_2().d));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    let var_0 = ~u_input.b;
    var var_1 = func_4(func_2(), u_input.b.ywy, true);
    var var_2 = vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(countOneBits(43929u) >> (var_0.x % 32u)), 0u), u_input.b.x, var_0.x, select(17975u, 1u, arg_1 | !var_1.e.d.b.x));
    let var_3 = var_2.xyx << (func_2().a.zyy % vec3<u32>(32u));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-var_1.c.x), arg_3.zzy, ~(-2147483647i));
    return -40501i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -1034f), -223f)))), select(!vec3<bool>(u_input.a.x > 4294967295u, true, 10660u > u_input.a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), true)), vec3<bool>(true, false, all(vec4<bool>(true, true, false, true)))), -(~(1i ^ func_1(1i, false, true, vec4<bool>(false, true, true, true)))));
    let var_1 = ~(~(~u_input.b.xzw) ^ vec3<u32>(4294967295u, ~75434u, _wgslsmith_mod_u32(4294967295u << (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(u_input.b.zxz, u_input.b.wxz))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -778f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-910f, -412f, 1000f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(494f, var_0.a, 449f))))) * vec3<f32>(1209f, _wgslsmith_f_op_f32(trunc(-1444f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + var_0.a), 1559f))));
    var var_3 = min(vec3<u32>(45769u, var_1.x, 4294967295u), ~(~(~var_1 << (countOneBits(u_input.b.xwx) % vec3<u32>(32u)))));
    var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(8747u, var_1.x, var_3.x << ((u_input.b.x | ~4294967295u) % 32u)));
    let var_4 = abs(firstLeadingBit(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(~vec3<i32>(var_4, var_4, var_0.c) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_3.x, u_input.a.x), var_1) % vec3<u32>(32u))), func_2().d.a.ywz), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-13558i, var_0.c), -vec2<i32>(var_4, var_4)), _wgslsmith_dot_vec4_i32(func_2().c, vec4<i32>(-65810i, var_4, var_0.c, var_0.c)), true) << ((u_input.a.x >> (24131u % 32u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(func_4(func_4(Struct_2(vec4<u32>(u_input.b.x, 11405u, u_input.a.x, var_3.x), vec2<i32>(var_0.c, -22250i), vec4<i32>(-1i, var_0.c, 0i, var_4), Struct_1(vec4<i32>(var_4, 2147483647i, -2147483647i, var_4), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec4<f32>(650f, -210f, 721f, 224f), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec2<i32>(var_4, -2147483647i))), vec3<u32>(4294967295u, 4294967295u, u_input.a.x), true).e, abs(vec3<u32>(1u, var_3.x, var_1.x)), true).c.x))), vec4<f32>(-871f, var_0.a, _wgslsmith_f_op_f32(339f + _wgslsmith_div_f32(func_2().d.c.x, _wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-508f, 738f))))));
}

