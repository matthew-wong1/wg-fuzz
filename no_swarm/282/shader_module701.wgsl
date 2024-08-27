struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: Struct_5;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = vec2<bool>(global1.c, any(vec3<bool>(global1.c && global1.c, any(vec3<bool>(true, global1.c, true)), true)));
    var var_1 = Struct_2(arg_0, _wgslsmith_mod_vec3_u32(abs(abs(countOneBits(vec3<u32>(0u, 484u, global1.b.a)))), u_input.c));
    var var_2 = !all(vec2<bool>(true, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(252f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1058f)));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -844f))))), vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 4294967295u), ~56732u, 3204u));
    let var_1 = Struct_4(vec2<i32>(global1.a.x, countOneBits(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.a, Struct_3(Struct_1(43894u)))) + _wgslsmith_f_op_f32(trunc(var_0.a.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -257f)), ~reverseBits(vec3<u32>(1u, ~4294967295u, 1u)), Struct_3(Struct_1(1u | _wgslsmith_dot_vec2_u32(u_input.c.yy, var_0.b.xy))), vec2<bool>(any(!vec3<bool>(global1.c, global1.c, global1.c)) || !global1.c, !(_wgslsmith_f_op_f32(-var_0.a.x) <= _wgslsmith_f_op_f32(func_3(var_0.a, Struct_3(Struct_1(1u)))))));
    var var_2 = vec3<i32>(firstTrailingBit(firstLeadingBit(-firstTrailingBit(global1.e))), firstTrailingBit(_wgslsmith_add_i32(firstLeadingBit(-2147483647i), ~u_input.b ^ firstLeadingBit(global1.e))), -2147483647i);
    let var_3 = var_1;
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a), vec3<u32>(1u | var_1.c.x, ~u_input.c.x, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(47791u, var_3.d.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 96484u, 0u, u_input.c.x), vec4<u32>(48678u, 6359u, var_1.c.x, 35503u)))));
    return Struct_3(global1.b);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> i32 {
    var var_0 = Struct_5(~_wgslsmith_mult_vec2_i32(global1.a, global1.a), arg_0.a, global1.c, abs(~reverseBits(max(2147483647i, 2147483647i))), u_input.b);
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 1906f))), 534f)), _wgslsmith_div_f32(153f, _wgslsmith_f_op_f32(ceil(-273f)))));
    var var_3 = abs(abs(_wgslsmith_div_vec4_i32(vec4<i32>(1i, abs(var_0.e), -1i, -1i), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 11671i, -22696i, global1.e), vec4<i32>(-28002i, -2330i, global1.a.x, var_0.e)))));
    global1 = Struct_5(var_3.yx, arg_0.a, global1.c, var_3.x, -1i);
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(var_3.yyy, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(var_3.zzx, vec3<i32>(global1.e, var_3.x, -1i), var_3.xww), vec3<i32>(var_0.a.x, 2147483647i, u_input.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-var_0.a.x, max(57290i, -2147483647i)), var_0.e, _wgslsmith_clamp_i32(~(-2147483647i), -var_3.x, global1.a.x)), vec3<i32>(u_input.a, min(var_0.e ^ var_3.x, var_3.x | 32584i), var_0.d), ~vec3<i32>(u_input.b, u_input.a, u_input.b) & vec3<i32>(countOneBits(41474i), var_0.a.x | global1.e, var_3.x & global1.e)));
}

fn func_1(arg_0: bool) -> i32 {
    global1 = Struct_5(vec2<i32>(func_4(func_2(), ~_wgslsmith_div_u32(53698u, 28079u)), abs(u_input.a)), global1.b, select(!(!(u_input.c.x != 0u)), true, global1.c), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>((35602i >> (global1.b.a % 32u)) >> ((global1.b.a << (u_input.c.x % 32u)) % 32u), -1i, -(~u_input.b)), ~firstLeadingBit(~vec3<i32>(global1.a.x, 2147483647i, global1.e))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(267f, 1574f)))), -1367f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * _wgslsmith_f_op_f32(1138f - 1029f)))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(399f, 783f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-357f, -745f)))))))), u_input.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -587f));
    var var_1 = 1i;
    return -38143i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1238f;
    global1 = Struct_5(-_wgslsmith_mod_vec2_i32(countOneBits(~global1.a), vec2<i32>(func_1(false), -2147483647i)), global1.b, true, u_input.a, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-14222i, u_input.b, 29001i) | vec3<i32>(u_input.a, 2147483647i, -2147483647i), -vec3<i32>(-5273i, u_input.b, global1.e)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, global1.a.x), vec3<i32>(-1i, u_input.b, 2147483647i)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-144f + -174f), _wgslsmith_f_op_f32(abs(1780f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(771f, -1388f), vec2<f32>(-1208f, 1135f)) - vec2<f32>(-467f, 1000f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, -1440f))))), select(!select(vec2<bool>(false, global1.c), vec2<bool>(global1.c, false), vec2<bool>(false, global1.c)), vec2<bool>(false, select(false, global1.c, global1.c)), true)))));
    let var_1 = Struct_5(abs(~(_wgslsmith_sub_vec2_i32(global1.a, vec2<i32>(u_input.a, 66441i)) | _wgslsmith_clamp_vec2_i32(global1.a, vec2<i32>(-24312i, 13088i), global1.a))), global1.b, false, abs(4i), -1i);
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1701f) + vec2<f32>(var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.a, ~var_1.b.a, 10850u, _wgslsmith_div_u32(~57886u, var_1.b.a)), min(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global1.b.a, var_1.b.a, 52520u), ~vec4<u32>(var_1.b.a, global1.b.a, var_1.b.a, u_input.c.x)), countOneBits(vec4<u32>(u_input.c.x, 43987u, 246u, 35779u) ^ vec4<u32>(0u, 0u, global1.b.a, u_input.c.x)))), ~(firstLeadingBit(vec2<u32>(var_1.b.a, 4294967295u) | u_input.c.zz) & vec2<u32>(~60319u, u_input.c.x)));
}

