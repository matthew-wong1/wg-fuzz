struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: vec3<f32> = vec3<f32>(961f, -1264f, -919f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(993f - _wgslsmith_f_op_f32(-309f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global1.x)))))), arg_0.d.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) - -684f), 1086f))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(934f, _wgslsmith_f_op_f32(floor(-136f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.d.x, 1576f))))))), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * var_0.x))), _wgslsmith_f_op_f32(floor(arg_0.d.x)), true)));
    global1 = vec3<f32>(-2261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-637f, _wgslsmith_f_op_f32(round(arg_2.d.x)))), global1.x)) - -172f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.x)), arg_0.d.x)));
    var var_2 = ~((~(u_input.b.x << (1u % 32u)) ^ select(select(u_input.b.x, u_input.b.x, arg_0.b), 4294967295u, all(vec3<bool>(arg_0.b, arg_2.b, arg_0.b)))) | 28410u);
    return arg_2.b & any(select(select(!vec4<bool>(arg_2.b, true, true, false), vec4<bool>(arg_2.b, true, arg_2.b, false), u_input.b.x >= 4294967295u), !(!vec4<bool>(arg_2.b, arg_2.b, false, arg_0.b)), true));
}

fn func_2() -> f32 {
    global0 = array<vec4<u32>, 27>();
    var var_0 = Struct_1(vec4<i32>(u_input.a, -54681i, ~abs(30755i), -3037i), any(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), u_input.b.x > u_input.b.x), vec4<bool>(true, true, true, func_3(Struct_1(vec4<i32>(33083i, u_input.a, 2928i, 1i), true, -2147483647i, vec4<f32>(2528f, -775f, global1.x, global1.x), vec2<i32>(-1i, -2147483647i)), vec2<i32>(u_input.a, 14468i), Struct_1(vec4<i32>(2147483647i, 38385i, u_input.a, -4924i), false, 16600i, vec4<f32>(global1.x, -1303f, 1112f, -1135f), vec2<i32>(u_input.a, u_input.a)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 647f)), 1173f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f - global1.x) + _wgslsmith_f_op_f32(-205f - global1.x)))), countOneBits(-vec2<i32>(abs(-20431i), ~u_input.a)));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(26077i, _wgslsmith_mult_i32(u_input.a, -2147483647i) | 2147483647i, -1i, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(u_input.a, 0i))), -(~(vec4<i32>(5338i, u_input.a, 25121i, u_input.a) ^ vec4<i32>(var_0.c, 2147483647i, -1i, u_input.a))), vec4<i32>(_wgslsmith_sub_i32(-25005i, 1823i) >> (u_input.b.x % 32u), var_0.e.x, ~55367i, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.a.yy), abs(vec2<i32>(38540i, var_0.c))))), false, ~0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 1000f, -460f, var_0.d.x))) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(-690f, 404f)), _wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(exp2(var_0.d.x)))), vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * -1537f)), var_0.d.x, global1.x)), var_0.e);
    var var_2 = true;
    var var_3 = var_1;
    return 1592f;
}

fn func_1() -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(global1.x, 822f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_2 = Struct_1(vec4<i32>(reverseBits(countOneBits(u_input.a) ^ _wgslsmith_clamp_i32(-1i, u_input.a, -8635i)), u_input.a, u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, -8846i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(14585i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -13574i, 1i), vec3<i32>(u_input.a, u_input.a, -11741i))))), true, reverseBits(u_input.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1955f)), -350f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, var_0.x))), global1.x))), (~select(vec2<i32>(u_input.a, 0i), vec2<i32>(2147483647i, u_input.a), false) << (_wgslsmith_sub_vec2_u32(u_input.b.zw, u_input.b.ww) % vec2<u32>(32u))) | abs(-(~vec2<i32>(u_input.a, u_input.a))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = Struct_1(vec4<i32>(var_0, func_1(), ~(select(-15276i, u_input.a, false) ^ max(var_0, 0i)), _wgslsmith_clamp_i32(select(2147483647i | var_0, 0i, all(vec3<bool>(true, true, true))), var_0, min(var_0, var_0 << (25147u % 32u)))), any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), all(vec4<bool>(true, false, true, false))))), -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-1531f + -334f), global1.x, _wgslsmith_div_f32(-2136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), select(-vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(firstLeadingBit(u_input.b.x), u_input.b.x >> (93518u % 32u)) % vec2<u32>(32u)), ~(~vec2<i32>(1i, 1i)), vec2<bool>(true, -u_input.a > var_0)));
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d.wxy)))), _wgslsmith_f_op_vec3_f32(-var_1.d.zxw)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 365f, var_1.d.x))))), _wgslsmith_f_op_vec3_f32(var_1.d.www + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.d.xzy)) - var_1.d.wyw)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -3253f), _wgslsmith_f_op_f32(f32(-1f) * -767f))), -1056f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_1.d.x), !var_1.b)))));
    let var_2 = vec4<i32>(var_0, -1i, var_0 | -_wgslsmith_add_i32(-33273i, _wgslsmith_mod_i32(0i, var_1.a.x)), var_1.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-273f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1356f), _wgslsmith_div_f32(var_1.d.x, 1000f)))), _wgslsmith_f_op_f32(699f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2165f), _wgslsmith_f_op_f32(step(-218f, 241f)))), -692f));
    let var_4 = var_1;
    var var_5 = vec3<u32>(u_input.b.x, 1u, min(u_input.b.x, ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(min(firstLeadingBit(firstTrailingBit(vec2<u32>(4294967295u, 108359u))), vec2<u32>(firstTrailingBit(var_5.x), 0u)), ~(vec2<u32>(u_input.b.x, u_input.b.x) & ~var_5.zy)), 48730i, -7084i, vec2<u32>(_wgslsmith_clamp_u32(~select(u_input.b.x, u_input.b.x, var_4.b), firstTrailingBit(20371u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 4294967295u), var_5.x >> (var_5.x % 32u), 4294967295u)), reverseBits(160u)), 13617i);
}

