struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1350f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_1(~_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.a.x, 4109i, u_input.a.x, -36363i), min(vec4<i32>(u_input.b, u_input.d, u_input.c, -13777i), vec4<i32>(u_input.a.x, u_input.d, -2147483647i, 0i))), -(~vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, -39371i))), firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, 25951i, 2147483647i) >> (vec4<u32>(arg_0.x, 4294967295u, 61791u, 1u) % vec4<u32>(32u)), ~vec4<i32>(-1i, 2147483647i, -1i, u_input.a.x)))));
    global0 = arg_1.x;
    global0 = arg_1.x;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-618f, -346f)))), arg_1.x));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(515f, _wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-498f + arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1329f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1000f, _wgslsmith_f_op_f32(-arg_1.x), 759f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-941f, 1300f, arg_1.x, arg_1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(957f, arg_1.x, -1650f, -1329f) - vec4<f32>(arg_1.x, -677f, arg_1.x, 955f)))) * vec4<f32>(474f, _wgslsmith_div_f32(923f, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(floor(-749f))), arg_1.x)));
    return false;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = vec2<bool>(func_3(select(vec2<u32>(1u, 1u), vec2<u32>(126105u, 48u), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-315f, -664f))) || all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), false)), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -1i, arg_0.x), vec4<i32>(0i, u_input.a.x, u_input.b, 0i)), reverseBits(vec4<i32>(-12476i, u_input.a.x, -12877i, arg_0.x))), ~select(vec4<i32>(-2147483647i, arg_0.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_0.x, arg_0.x, u_input.d), true) ^ vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, -9207i, u_input.a.x), vec4<i32>(arg_0.x, 45913i, -2147483647i, -5745i)), abs(arg_0.x), arg_0.x)));
    var var_2 = 1u;
    var_2 = 1u;
    let var_3 = select(vec3<u32>(_wgslsmith_add_u32(~abs(18132u), _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 1u), 1u)), 1u, ~(~_wgslsmith_div_u32(8244u, 6212u))), vec3<u32>(firstTrailingBit(_wgslsmith_mod_u32(~3267u, firstLeadingBit(8956u))), 66593u, firstTrailingBit(69423u)), vec3<bool>(any(!vec4<bool>(var_0.x, var_0.x, true, true)), false, true));
    return Struct_2(var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(317f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1239f)) * _wgslsmith_f_op_f32(-1f)));
    return ~1u;
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(f32(-1f) * -127f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1516f), 137f))));
    var var_0 = vec3<bool>(true, true, !all(vec4<bool>(true, false, true, true)));
    var_0 = select(vec3<bool>(var_0.x, true, ~13942u == func_4(func_2(vec3<i32>(u_input.c, u_input.d, -1i)), true, var_0.x, true)), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, false, false), false), vec3<bool>(true, true, true), true), !(!vec3<bool>(true, var_0.x, true)), true), select(vec3<bool>(!all(var_0.xx), false, !(!var_0.x)), !vec3<bool>(u_input.a.x == 19416i, true, select(false, true, var_0.x)), var_0.x));
    var_0 = vec3<bool>(!(var_0.x || any(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, true)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(752f, 320f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(ceil(901f)))));
    let var_1 = Struct_4(all(!vec2<bool>(var_0.x || true, var_0.x & var_0.x)), func_2(select(firstLeadingBit(vec3<i32>(15766i, u_input.a.x, 2147483647i)) & vec3<i32>(u_input.c, u_input.c, -2147483647i), abs(vec3<i32>(32510i, -16721i, -12337i)) << (select(vec3<u32>(91247u, 86761u, 60143u), vec3<u32>(54307u, 1u, 6789u), true) % vec3<u32>(32u)), vec3<bool>(true, true, true))), !((-u_input.c & -34965i) < -34625i), !vec3<bool>(true, var_0.x, func_3(vec2<u32>(0u, 0u), vec2<f32>(1778f, -963f))));
    return countOneBits(~8750i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec4<i32>(~u_input.a.x, -2147483647i, func_1(), 46893i), vec4<i32>(countOneBits(_wgslsmith_clamp_i32(9925i, _wgslsmith_mult_i32(6834i, u_input.b), _wgslsmith_mult_i32(u_input.b, -22053i))), u_input.d, u_input.b, ~u_input.c));
    var var_1 = Struct_3(~vec3<u32>(1u, 1u, 1u), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-316f, 749f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-890f, 644f))))), -u_input.b, func_2(firstTrailingBit(var_0.a.wxz)));
    var_1 = Struct_3(~(~(~(~var_1.a))), var_1.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(var_1.c.x, -1823f))))))), ~(-var_1.d), var_1.e);
    var_1 = Struct_3(var_1.a, _wgslsmith_mod_u32(20308u, 4294967295u), var_1.c, u_input.b, Struct_2(var_1.e.a));
    let var_2 = var_1.e.a;
    var_1 = Struct_3(var_1.a, 4280u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-348f, 489f), var_1.c)) - _wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(var_1.c.x, 176f))) * var_1.c), _wgslsmith_f_op_vec2_f32(min(var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.c)) - _wgslsmith_f_op_vec2_f32(-var_1.c)))))), var_2.b.x, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(299f, var_1.c.x));
}

