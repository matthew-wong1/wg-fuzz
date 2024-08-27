struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32 = 1i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-673f * -1000f), 1189f, -1357f, _wgslsmith_f_op_f32(floor(706f))) - vec4<f32>(_wgslsmith_f_op_f32(773f * 159f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1441f - 434f), _wgslsmith_f_op_f32(select(1551f, -562f, global0.x))))));
    let var_1 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -280f))))), var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = ~select(~vec4<u32>(_wgslsmith_add_u32(0u, u_input.d.x), max(38102u, 0u), select(u_input.b, 4294967295u, false), 4294967295u), countOneBits(select(~vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.d.x, u_input.b, 0u, 19710u), !vec4<bool>(true, global0.x, global0.x, global0.x))), select(!(!vec4<bool>(global0.x, false, global0.x, false)), select(select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true), vec4<bool>(global0.x, true, true, false), select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, true, false, false), true)), vec4<bool>(u_input.b == 12019u, false, all(vec4<bool>(global0.x, false, global0.x, global0.x)), u_input.d.x < 0u)));
    var var_3 = Struct_1(vec3<i32>(-2147483647i, 0i, 20455i), abs(u_input.a ^ u_input.a), u_input.d.xy, var_1.x, max(4294967295u, 20844u));
    global0 = vec2<bool>(true, true);
    return var_1.x;
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.a;
    global0 = vec2<bool>(_wgslsmith_div_f32(-374f, _wgslsmith_f_op_f32(func_3())) < _wgslsmith_f_op_f32(-955f * _wgslsmith_f_op_f32(max(-493f, _wgslsmith_f_op_f32(-1189f * 929f)))), var_0 <= (-_wgslsmith_add_i32(u_input.a, u_input.a) ^ -2147483647i));
    global1 = ~(-4394i);
    let var_1 = ~(reverseBits(vec4<u32>(u_input.b, ~25654u, 28289u, countOneBits(u_input.d.x))) ^ (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.d.x, 88801u, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.b, 7971u, u_input.b)) & vec4<u32>(1u, min(u_input.b, 39208u), 4294967295u, u_input.d.x | u_input.d.x)));
    global1 = _wgslsmith_div_i32(~_wgslsmith_div_i32(1i, ~(~(-1i))), var_0);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(f32(-1f) * -454f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-1081f * -1462f), any(vec4<bool>(global0.x, false, global0.x, true)))) - 1f)), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-871f * _wgslsmith_f_op_f32(245f + 424f)), 1000f)), -vec4<i32>(1i, 0i, var_0, min(u_input.a, 36445i))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(679f + -144f))))), vec4<i32>(~u_input.a, min(-58113i, 2147483647i), 1i, ~(-2147483647i)) | _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a, -5668i), vec4<i32>(0i, var_0, u_input.a, 1i), vec4<i32>(var_0, u_input.c.x, var_0, -1i)), reverseBits(vec4<i32>(2147483647i, var_0, -53436i, u_input.a)), firstTrailingBit(vec4<i32>(1492i, u_input.c.x, u_input.a, var_0)))), Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0, 33827i, u_input.c.x), vec4<i32>(var_0, u_input.a, var_0, var_0)), -u_input.a | (i32(-1i) * -30690i), -2147483647i), ~38960i, ~(~var_1.xx) | vec2<u32>(~28163u, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(328f, -519f))))), 4294967295u));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-528f, -1031f)))), vec4<i32>(-23975i, -2147483647i, -_wgslsmith_mod_i32(_wgslsmith_mod_i32(7436i, -24202i), select(u_input.c.x, u_input.c.x, false)), 34241i));
    let var_1 = Struct_2(1409f, -min(vec4<i32>(abs(var_0.b.x), 1i, var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, 61205i))), abs(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 1i))));
    global1 = reverseBits(_wgslsmith_sub_i32(13888i, var_1.b.x) ^ u_input.c.x);
    var var_2 = func_2();
    var var_3 = global0.x;
    return true;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(439f, Struct_2(-594f, -select(-vec4<i32>(-2012i, u_input.c.x, u_input.a, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.c.x, u_input.c.x), vec4<i32>(u_input.a, -2147483647i, -51984i, 1i)), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, true, arg_1, global0.x), arg_1))), Struct_2(1476f, vec4<i32>(max(40031i, u_input.a << (4294967295u % 32u)), _wgslsmith_sub_i32(countOneBits(u_input.c.x), u_input.a), ~u_input.c.x, 2147483647i)), Struct_1(vec3<i32>(-1i, u_input.c.x, -2147483647i), abs(u_input.c.x), vec2<u32>(_wgslsmith_add_u32(10680u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53610u, arg_0, u_input.d.x), vec4<u32>(arg_0, arg_0, 4294967295u, u_input.b))), 134686u), _wgslsmith_f_op_f32(func_3()), 4294967295u));
    let var_1 = -select(max(vec2<i32>(-7991i, _wgslsmith_sub_i32(var_0.c.b.x, 0i)), -var_0.c.b.yx), u_input.c.zz << (~min(vec2<u32>(6074u, u_input.b), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), global0.x);
    global1 = -3793i;
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.d.x, ~1u), arg_0, _wgslsmith_mult_u32(1u, var_0.d.e)), abs(vec3<u32>(14370u, ~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 1u, var_0.d.c.x)), var_0.d.e)));
    var_0 = func_2();
    return var_0.d;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.b.yx, vec2<i32>(-1i, -22296i), arg_2.a.zx), _wgslsmith_div_vec2_i32(arg_2.a.xy, u_input.c.yx))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(43682i, 13149i, arg_2.b)), vec3<i32>(arg_0.b.x, arg_2.b, ~(-46934i)))), func_4(arg_2.e, ~38970u < arg_2.e, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, arg_2.d, arg_2.d, arg_2.d))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, arg_0.a, -1671f, arg_0.a), vec4<f32>(-590f, arg_0.a, 759f, arg_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1796f, arg_2.d, -1000f, arg_2.d), vec4<f32>(1000f, -1270f, arg_0.a, arg_2.d)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, arg_2.d, -753f, 1957f), vec4<f32>(-718f, arg_0.a, -180f, arg_2.d), vec4<bool>(arg_3, false, true, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 530f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, arg_0.a, arg_2.d))))).a.x);
    var var_1 = func_2().c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.d)), func_2().d.d))));
    global1 = 1i;
    var var_3 = vec2<bool>(select(true, true, var_2.x == 546f), global0.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -568f), _wgslsmith_f_op_f32(3937f * -281f))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-345f, -1447f), 2239f))), vec4<i32>(1i, u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, -29567i), u_input.c.x)), _wgslsmith_mult_i32(_wgslsmith_add_i32(max(u_input.a, _wgslsmith_add_i32(-44171i, u_input.c.x)), -5044i), _wgslsmith_add_i32(-1i, -max(u_input.c.x, 1i))), func_4(u_input.d.x, func_1(_wgslsmith_div_u32(~u_input.d.x, ~u_input.d.x), vec4<f32>(-416f, 499f, -1126f, _wgslsmith_div_f32(1012f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2313f - -1316f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2085f)) + -163f), -1438f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2213f, 1335f, -1000f) + vec3<f32>(-601f, -543f, 1509f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(171f, -1626f, -1127f) * vec3<f32>(-859f, 1464f, -1266f)))))), !(!((1u > u_input.d.x) | !global0.x)));
    let var_1 = func_4(_wgslsmith_mod_u32(23567u, u_input.d.x), !any(!vec3<bool>(global0.x, false, global0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1357f, 1000f, var_0.a, 1170f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -2552f, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1861f, var_0.a, 694f, var_0.a) * vec4<f32>(1325f, var_0.a, 646f, var_0.a)), !vec4<bool>(global0.x, true, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) - vec4<f32>(1006f, 595f, var_0.a, var_0.a)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), -1000f) + _wgslsmith_f_op_f32(-func_5(Struct_2(var_0.a, var_0.b), -14941i, Struct_1(u_input.c, 1i, vec2<u32>(u_input.d.x, 0u), var_0.a, 4294967295u), global0.x).a)), var_0.a, 102f)).c;
    var_0 = Struct_2(-949f, vec4<i32>(-2147483647i, var_0.b.x, 1i, reverseBits(2147483647i)));
    global0 = select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), !vec2<bool>(global0.x, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(true, all(vec3<bool>(global0.x, true, global0.x))), select(select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), true), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), global0.x), vec2<bool>(true, true))), true), select(vec2<bool>(global0.x, !(var_1.x > u_input.b)), select(vec2<bool>(true, all(vec2<bool>(global0.x, false))), !vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), true))), global0.x), false);
    var var_2 = func_2().d;
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.d)), var_0.a, true)) - _wgslsmith_f_op_f32(-var_0.a)), var_0.b);
    var var_3 = global0.x;
    var_0 = func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer((max(vec4<u32>(1u, u_input.d.x, 103989u, 41753u), ~vec4<u32>(var_2.e, u_input.d.x, var_1.x, 23890u)) >> (firstLeadingBit(vec4<u32>(23662u, 4294967295u, 4294967295u, 3893u) ^ vec4<u32>(var_2.e, 1u, u_input.d.x, 0u)) % vec4<u32>(32u))) | vec4<u32>(var_1.x, reverseBits(1u), 28269u, 1u));
}

