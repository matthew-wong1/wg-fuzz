struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(27477u, 0u, 4188u, 7983u), vec4<u32>(4294967295u, 0u, 4294967295u, 6133u), vec4<u32>(15041u, 1u, 0u, 12697u), vec4<u32>(69535u, 0u, 4294967295u, 52020u), vec4<u32>(4294967295u, 46518u, 36111u, 0u), vec4<u32>(0u, 13434u, 53355u, 0u), vec4<u32>(22581u, 37219u, 4294967295u, 24962u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(17026u, 4294967295u, 0u, 1u), vec4<u32>(72547u, 51864u, 62843u, 1u), vec4<u32>(0u, 1u, 4294967295u, 36065u), vec4<u32>(4294967295u, 0u, 4294967295u, 19133u), vec4<u32>(0u, 32052u, 1u, 4294967295u), vec4<u32>(10235u, 52169u, 4294967295u, 12681u));

var<private> global2: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-46501i, 0i), vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(675f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-228f)), 1652f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) - _wgslsmith_f_op_f32(-286f - -797f))))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, min(abs(-38931i), ~(-10387i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, 1i, -10944i)), ~vec3<i32>(-1i, -4339i, 1i))), _wgslsmith_mult_i32(12430i, ~1i)), ~u_input.a.xww, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(639f, 352f, -1009f), vec3<f32>(-322f, 455f, -1980f), true)), vec3<f32>(1006f, -655f, 411f)))))));
    let var_1 = var_0;
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.a.yz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1237f, var_0.a.x) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.a.yz)))));
    var var_4 = Struct_1(var_1.d, _wgslsmith_sub_i32(var_1.b, min(~(-1i), _wgslsmith_sub_i32(-2147483647i, var_1.b))), countOneBits(vec3<u32>(0u, ~_wgslsmith_clamp_u32(var_0.c.x, 117099u, 28255u), _wgslsmith_dot_vec2_u32(~vec2<u32>(59646u, 10105u), select(vec2<u32>(1u, var_1.c.x), vec2<u32>(23859u, 1u), true)))), vec3<f32>(-147f, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.d.x)))))));
    return -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.b, var_1.b | var_0.b, var_4.b, -1i)), select(~(-vec4<i32>(1i, var_0.b, -1i, 38867i)), -abs(vec4<i32>(14763i, -2147483647i, var_1.b, 2147483647i)), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(219f, _wgslsmith_f_op_f32(-arg_0), -315f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1009f, 1311f))))), ~abs(0i), ~(~(~(~vec3<u32>(35174u, 406u, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1032f)), _wgslsmith_f_op_f32(arg_0 * -2014f), _wgslsmith_f_op_f32(772f - arg_0))), !(!vec3<bool>(arg_1, false, arg_1)))));
    var var_1 = firstLeadingBit(vec4<i32>(-var_0.b, func_3(), var_0.b, -10897i));
    let var_2 = var_0;
    let var_3 = var_2;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1116f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.x, -2279f, true)) * 503f), arg_0, -395f);
    return vec3<u32>(_wgslsmith_div_u32(1u, ~32408u), _wgslsmith_clamp_u32(max(_wgslsmith_clamp_u32(var_2.c.x, var_2.c.x, 21642u) ^ 1u, _wgslsmith_div_u32(~var_3.c.x, 1u)), var_2.c.x, ~firstTrailingBit(_wgslsmith_mult_u32(25960u, 30424u))), _wgslsmith_mod_u32(min(_wgslsmith_sub_u32(var_3.c.x, 1u), ~u_input.a.x), 72294u));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = vec3<i32>(28008i, ~countOneBits(~1i), ~abs(arg_0.b));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) * _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) - _wgslsmith_f_op_f32(arg_0.a.x - -2186f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_0.d)), 17249i, reverseBits(~u_input.a.xwy) >> (vec3<u32>(reverseBits(_wgslsmith_add_u32(1059u, 89184u)), 0u, ~arg_1) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(arg_0.d + arg_0.d));
    var var_3 = Struct_1(arg_0.a, ~abs(-firstLeadingBit(2147483647i)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-var_2.d.x)), all(vec2<bool>(true, true))), arg_0.d);
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_3.a);
    return ~(arg_0.c.x | _wgslsmith_dot_vec3_u32(arg_0.c, ~(~u_input.a.zww)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = ~_wgslsmith_add_u32(~4294967295u, u_input.a.x) & u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1003f, 1129f, 470f))))), 1i, ~abs(u_input.a.xwz), vec3<f32>(_wgslsmith_f_op_f32(569f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + _wgslsmith_f_op_f32(f32(-1f) * -1380f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-633f + 3052f), _wgslsmith_f_op_f32(f32(-1f) * -870f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-435f - _wgslsmith_f_op_f32(abs(-611f))), _wgslsmith_f_op_f32(2060f * -320f)))));
    global1 = array<vec4<u32>, 14>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, -296f, 449f)))))), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b >> (var_1.c.x % 32u), var_1.b), _wgslsmith_mod_vec2_i32(vec2<i32>(-25269i, 1i), vec2<i32>(var_1.b, var_1.b))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, 1u, u_input.a.x)), ~vec3<u32>(35740u, func_1(var_1, 40776u), countOneBits(36449u))), _wgslsmith_f_op_vec3_f32(-var_1.d));
    var var_3 = any(select(!vec2<bool>(select(false, false, true), true), vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true)), 0u < _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, 6826u, var_1.c.x), u_input.a.wyz)), all(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), var_1.c.x == u_input.a.x))));
    let var_4 = select(vec3<bool>(true, true, true), !vec3<bool>(true, all(vec3<bool>(false, true, false)) == true, any(vec3<bool>(true, true, true))), all(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, 4149i, var_2.b, 2147483647i), vec4<i32>(var_2.b, -1i, 0i, var_2.b))) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(12914i, -2147483647i, -9220i, -10564i) >> (u_input.a % vec4<u32>(32u)), select(vec4<i32>(5985i, var_2.b, var_1.b, 2147483647i), vec4<i32>(var_2.b, 0i, 2147483647i, var_2.b), true)), ~_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(1i, -26439i, var_2.b, var_2.b)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b, var_1.b, -9290i, var_1.b), vec4<i32>(var_2.b, 2147483647i, var_2.b, -1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(-12887i, var_2.b, var_1.b, var_1.b) << (u_input.a % vec4<u32>(32u)), vec4<i32>(var_1.b, var_2.b, var_1.b, var_2.b))), ~_wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.a.x, 35863u), abs(4294967295u) << (_wgslsmith_add_u32(36536u, var_2.c.x) % 32u)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - -195f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) * var_1.d.x)), var_2.a.x, _wgslsmith_f_op_f32(var_1.d.x * var_2.a.x), _wgslsmith_f_op_f32(sign(var_2.a.x))), select(max(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 21518u), var_1.c.xx), u_input.a.wx), ~16088u), var_2.c.x ^ 4294967295u, !all(select(var_4.xz, vec2<bool>(true, var_4.x), var_4.yx))));
}

