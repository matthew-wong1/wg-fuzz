struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: u32 = 27006u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> i32 {
    global0 = array<vec4<f32>, 12>();
    var var_0 = vec4<bool>(true, true, true, false);
    global2 = ~reverseBits(~(~0u));
    global2 = ~u_input.d ^ (max(0u, 4294967295u ^ ~arg_2.a.x) & arg_3);
    let var_1 = global1.yx;
    return u_input.a.x;
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~vec3<u32>(u_input.d, ~_wgslsmith_mod_u32(39712u, u_input.b), 46155u), -2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-914f * -738f), 323f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(200f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, -1050f, 1442f)) * vec3<f32>(-226f, -454f, -332f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-415f, 644f, -448f) * vec3<f32>(-239f, -732f, -802f)))))));
    var var_1 = _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(firstLeadingBit(firstLeadingBit(4004u) ^ var_0.a.x), u_input.b, 1u));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.c))), u_input.a.x, (_wgslsmith_mult_u32(~112064u, u_input.b) >> (~countOneBits(var_0.a.x) % 32u)) >> ((u_input.b << (~(~88576u) % 32u)) % 32u), -17714i >> (_wgslsmith_mult_u32(0u, 0u) % 32u), Struct_2(select(!vec3<bool>(global1.x, global1.x, global1.x), !(!vec3<bool>(global1.x, false, global1.x)), _wgslsmith_f_op_f32(floor(-405f)) != -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = vec3<bool>(any(select(!vec2<bool>(false, var_2.e.a.x), !vec2<bool>(global1.x, global1.x), vec2<bool>(true, true))), true, !all(select(!vec4<bool>(global1.x, false, global1.x, var_2.e.a.x), select(vec4<bool>(var_2.e.a.x, global1.x, false, true), vec4<bool>(false, true, true, global1.x), vec4<bool>(false, global1.x, var_2.e.a.x, true)), true)));
    var var_4 = reverseBits(25161i);
    return _wgslsmith_div_u32(var_0.a.x, 48703u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = vec3<u32>(~func_3(), ~(~1u), 56889u);
    global0 = array<vec4<f32>, 12>();
    return max(min(-(vec4<i32>(arg_2.x, 2147483647i, 56006i, -59767i) ^ vec4<i32>(u_input.c, u_input.c, arg_2.x, u_input.e)), select(reverseBits(countOneBits(vec4<i32>(-71664i, arg_2.x, 2992i, u_input.c))), abs(vec4<i32>(-16330i, -1i, arg_2.x, u_input.a.x)), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, true, false, false)))), firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(arg_2.x, 14225i, arg_2.x), _wgslsmith_mod_i32(arg_2.x, u_input.e), 0i, arg_2.x) ^ select(abs(vec4<i32>(-12724i, arg_2.x, arg_2.x, u_input.a.x)), vec4<i32>(-27811i, -3437i, -15592i, arg_2.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, false, global1.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~u_input.b);
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c), -46221i, 17829i, select(_wgslsmith_mod_i32(-2147483647i, min(u_input.c, 1i)), i32(-1i) * -29141i, all(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, true))))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, abs(func_1(u_input.b, Struct_4(-1i, vec4<u32>(4294967295u, 50476u, 1u, 61894u), vec3<i32>(20796i, u_input.c, u_input.c), false, vec3<i32>(0i, u_input.e, -30666i)), Struct_1(vec3<u32>(33831u, u_input.b, 6699u), u_input.a.x, vec3<f32>(769f, 619f, 1141f)), u_input.b)), -6436i, 24548i), _wgslsmith_mult_vec4_i32(-vec4<i32>(-19625i, -1i, u_input.c, u_input.c), select(func_2(vec2<u32>(u_input.b, u_input.b), u_input.d, vec3<i32>(2147483647i, 0i, 1322i)), max(vec4<i32>(1i, 29730i, -2147483647i, 1i), vec4<i32>(0i, u_input.e, -5360i, -46798i)), global1.x))));
    let var_1 = Struct_1(~abs(firstTrailingBit(vec3<u32>(u_input.d, u_input.b, u_input.d) << (vec3<u32>(u_input.d, 4294967295u, 2774u) % vec3<u32>(32u)))), ~(_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(u_input.c, u_input.c)) << (~u_input.b % 32u)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1120f)), _wgslsmith_f_op_f32(-887f * -600f))))), _wgslsmith_f_op_f32(sign(810f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-536f, -1059f)) * -2765f)));
    global2 = ~(~abs(u_input.d));
    global1 = select(select(!select(!vec3<bool>(true, true, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), select(vec3<bool>(all(vec3<bool>(true, global1.x, true)), true, true), select(!vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(global1.x, true, false), vec3<bool>(false, false, global1.x), false), vec3<bool>(global1.x, true, global1.x)), !(!vec3<bool>(global1.x, false, true))), global1.x), !(!vec3<bool>(global1.x, any(vec4<bool>(false, global1.x, true, false)), global1.x)), !vec3<bool>(true, !(!global1.x), var_1.b >= -21860i));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.x);
    global2 = _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 0u, 44588u, var_1.a.x), vec4<u32>(1u, var_1.a.x, 1u, 1u)), ~vec4<u32>(u_input.b, 27663u, 4294967295u, u_input.b))), abs(_wgslsmith_mult_u32(~u_input.d, u_input.b))), vec2<u32>(~4294967295u, abs(firstLeadingBit(43026u & var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.a | vec2<i32>(~var_1.b, select(-1i, -2147483647i, true))), vec2<i32>(i32(-1i) * -37495i, 9962i) << (vec2<u32>(45938u, ~var_1.a.x ^ ~1u) % vec2<u32>(32u)), var_1.c.x, var_0, u_input.b);
}

