struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_3,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-897f * _wgslsmith_f_op_f32(642f - -551f))), 445f, false)));
    global0 = true;
    global0 = 1f >= _wgslsmith_f_op_f32(round(582f));
    let var_1 = ~reverseBits(vec3<i32>(~(~u_input.a), _wgslsmith_div_i32(firstLeadingBit(u_input.a), abs(u_input.a)), u_input.a));
    let var_2 = countOneBits(~u_input.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f * -1070f)))), 4294967295u, Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, arg_2.x, 227f, arg_2.x))) - vec4<f32>(-402f, 1537f, arg_2.x, arg_2.x)), arg_1.x))), false, vec4<f32>(_wgslsmith_f_op_f32(step(-928f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-383f + arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = all(select(vec2<bool>(arg_1.x, arg_1.x), !select(arg_1, vec2<bool>(true, false), arg_1), arg_1)) || true;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1847f, var_0.a)), var_0.a, 365f, -515f), var_0.e), vec4<f32>(300f, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1168f)) * _wgslsmith_f_op_f32(select(var_0.e.x, 1370f, true))), _wgslsmith_f_op_f32(arg_2.x - 1287f)), arg_1.x)));
    let var_2 = vec4<bool>(!var_0.d, var_0.a != var_0.a, true, var_0.d);
    var var_3 = min(countOneBits(vec2<i32>(-_wgslsmith_div_i32(2147483647i, u_input.a), 2147483647i)), arg_0);
    return Struct_2(select(vec2<bool>(any(select(vec4<bool>(arg_1.x, false, var_0.d, arg_1.x), vec4<bool>(true, var_2.x, var_2.x, true), var_2.x)), false), vec2<bool>(any(select(vec3<bool>(arg_1.x, arg_1.x, var_0.d), vec3<bool>(false, var_2.x, false), true)), var_0.d), arg_1), _wgslsmith_div_f32(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x - 626f), 1390f)))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, 436f, arg_2.b, -319f), vec4<f32>(arg_2.b, 926f, arg_2.b, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2125f, -290f, 1333f, 172f) * vec4<f32>(arg_2.b, 1000f, arg_2.b, arg_1)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_2.b, 727f, arg_2.b), vec4<f32>(arg_2.b, -460f, arg_1, arg_1), vec4<bool>(true, true, false, true)))))))));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), -1i, 13862i);
    var var_2 = Struct_1(~(~(~(~vec4<u32>(u_input.b.x, 4294967295u, arg_0, 1u)))), ~_wgslsmith_clamp_u32(arg_0, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, u_input.b.x, 0u) & vec3<u32>(28847u, 3889u, arg_0)), arg_0), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(-1833f, _wgslsmith_f_op_f32(select(var_0.a.x, arg_2.b, true))))), -989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) - arg_2.b) - 1260f), _wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_div_i32(-30896i, u_input.a), _wgslsmith_f_op_f32(min(arg_2.b, var_0.a.x)));
    global0 = true;
    var_2 = Struct_1(var_2.a, ~(~(~(~94883u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_2.c, vec4<f32>(var_2.e, _wgslsmith_f_op_f32(arg_2.b * -129f), _wgslsmith_f_op_f32(-242f - -266f), _wgslsmith_f_op_f32(f32(-1f) * -1507f))))), var_2.d, _wgslsmith_f_op_f32(var_0.a.x + var_2.c.x));
    return false || arg_2.a.x;
}

fn func_1() -> vec2<bool> {
    global0 = !func_4(~77610u, 179f, func_2(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -59518i)) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(step(-604f, 333f)), 1f, _wgslsmith_f_op_f32(330f * 400f))));
    global0 = select(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)) && any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), !(true || select(true, true, false)), !all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true)));
    let var_0 = max(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.a, -22930i, -2147483647i)), vec4<i32>(2147483647i, u_input.a, 1i, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-12161i, -2147483647i, -1i)), 2147483647i), ~((vec3<i32>(13715i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, -2147483647i, u_input.a)) | -vec3<i32>(u_input.a, -1i, -43671i))), select(select(vec3<i32>(i32(-1i) * -50751i, -2147483647i, u_input.a), firstLeadingBit(-vec3<i32>(-31249i, u_input.a, u_input.a)), true), -countOneBits(vec3<i32>(u_input.a, -14943i, u_input.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), 4294967295u != u_input.b.x))));
    global0 = any(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true))));
    let var_1 = all(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(45326u == u_input.b.x, u_input.b.x <= u_input.b.x, u_input.a == u_input.a)));
    return vec2<bool>(!(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-148f - -949f), _wgslsmith_f_op_vec4_f32(func_3(0u)).x)) <= _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(~var_0.xx, func_2(vec2<i32>(reverseBits(var_0.x), _wgslsmith_mult_i32(u_input.a, u_input.a)), vec2<bool>(true, !var_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(646f, -819f, -537f), vec3<f32>(692f, -2666f, 1818f)))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1057f, -1000f, -253f) + vec3<f32>(-1004f, -632f, -122f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-170f, -2377f, 1000f))), select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, false), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(830f, 655f, -901f)))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), !func_2(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -68112i), vec2<i32>(u_input.a, u_input.a)), func_1(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-859f, -1024f, 754f), vec3<f32>(-531f, 578f, -706f), vec3<bool>(false, false, true))), vec3<f32>(-933f, 1667f, -1178f))).a, func_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -2147483647i) >> (u_input.b.zy % vec2<u32>(32u)), vec2<i32>(-u_input.a, reverseBits(u_input.a))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(592f, 487f, 919f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-253f, -1000f, 494f), vec3<f32>(469f, 252f, 278f), vec3<bool>(false, false, false)))))).a);
    let var_1 = vec4<i32>(u_input.a, 53888i, firstTrailingBit(36943i), ~countOneBits(-1i));
    global0 = var_0.x & !var_0.x;
    global0 = func_2(reverseBits(vec2<i32>(_wgslsmith_mod_i32(-u_input.a, -u_input.a), _wgslsmith_dot_vec3_i32(var_1.yxy, var_1.wxz))), vec2<bool>(any(!(!vec3<bool>(var_0.x, false, true))), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -692f)), 1173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1651f, -535f, var_0.x)))) - vec3<f32>(_wgslsmith_div_f32(508f, _wgslsmith_f_op_f32(f32(-1f) * -327f)), -1092f, 757f))).a.x;
    let var_2 = Struct_5(-811f, _wgslsmith_add_u32(4294967295u, u_input.b.x << (~4294967295u % 32u)), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2212f, -197f, -1000f, 1191f) + vec4<f32>(-527f, -188f, 1416f, 174f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2147f, 1042f, 739f, 515f)), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(928f, 614f, -537f, -711f), vec4<f32>(-508f, -1566f, 532f, 1578f), var_0.x))))), true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(678f, _wgslsmith_f_op_f32(2726f * 2392f), 1000f, -1150f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 856f, -610f, -286f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, _wgslsmith_mod_u32(~select(var_2.b, var_2.b, false), ~u_input.b.x), 32551u, _wgslsmith_mult_u32(var_2.b, 1u)), 42626i, func_2(var_1.xy, vec2<bool>(all(vec2<bool>(var_0.x, false)), true), _wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_add_u32(33848u, 1u))).zzz).b, ~countOneBits(_wgslsmith_mult_vec2_u32(~u_input.b.xy, ~vec2<u32>(var_2.b, 1u))));
}

