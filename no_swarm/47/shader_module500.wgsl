struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(2619f, 251f, 1697f, -1608f), vec4<f32>(598f, 909f, 1291f, -1241f), vec4<f32>(558f, 138f, -977f, 746f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_1.b, true);
    let var_1 = select(!select(vec2<bool>(false, all(vec2<bool>(false, arg_1.a))), !select(vec2<bool>(arg_1.a, var_0.b), vec2<bool>(arg_1.a, var_0.b), true), arg_0.x > u_input.a), select(vec2<bool>(any(!vec2<bool>(var_0.a, var_0.b)), arg_1.a), select(vec2<bool>(arg_1.a, true), vec2<bool>(var_0.b, true), false & all(vec3<bool>(var_0.b, var_0.a, false))), select(!select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.b, false), false), select(vec2<bool>(true, true), !vec2<bool>(var_0.a, arg_1.a), !vec2<bool>(arg_1.a, arg_1.a)), vec2<bool>(arg_1.b, all(vec3<bool>(var_0.b, arg_1.b, var_0.a))))), abs(1u) >= abs(~min(arg_0.x, arg_0.x)));
    let var_2 = arg_0;
    var var_3 = Struct_2(!any(select(!vec3<bool>(var_1.x, false, false), vec3<bool>(arg_1.a, arg_1.a, var_1.x), var_1.x | arg_1.b)), arg_1, arg_1, abs(_wgslsmith_mult_u32(var_2.x, _wgslsmith_mod_u32(42626u, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(150f, 166f)), -932f, 611f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, 1000f, -447f))))));
    var var_4 = ~u_input.c.xx;
    return _wgslsmith_dot_vec4_u32(max(var_2, ~(~vec4<u32>(arg_0.x, 9159u, var_2.x, u_input.b)) >> (arg_0 % vec4<u32>(32u))), arg_0);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    global0 = array<vec4<f32>, 3>();
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -51241i, arg_2), vec3<i32>(2147483647i, -1i, arg_2))), ~countOneBits(vec3<i32>(0i, -2147483647i, arg_2))) >= (-select(10565i, arg_2, true) & -_wgslsmith_mult_i32(arg_2, arg_2)), arg_1, Struct_1(!any(!vec3<bool>(arg_1.b, false, arg_1.a)), true), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1339f, -377f, 1579f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1986f, 280f, 1854f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(237f, _wgslsmith_f_op_f32(ceil(2020f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1858f)) - _wgslsmith_f_op_f32(step(560f, -1081f))), 178f)));
    global0 = array<vec4<f32>, 3>();
    let var_1 = Struct_2(true, Struct_1(var_0.a, arg_1.a), arg_1, 4294967295u >> ((abs(func_3(arg_0, var_0.b)) | countOneBits(57212u)) % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-962f, var_0.e.x)))), _wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(-1000f + -1235f)), _wgslsmith_f_op_f32(abs(var_0.e.x)))));
    var var_2 = var_1.b.b & true;
    return -25892i;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0;
    global0 = array<vec4<f32>, 3>();
    let var_1 = vec2<i32>((_wgslsmith_clamp_i32(~1i, ~1i, 1i) & -18943i) | -func_2(vec4<u32>(arg_0.d, 15520u, 4294967295u, 4294967295u), arg_0.b, -30547i), abs(-abs(-14992i)));
    let var_2 = Struct_1(!(arg_0.e.x >= 732f) != arg_0.a, false);
    let var_3 = var_2.b;
    return _wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(arg_0.e.x - var_0.e.x));
}

fn func_4(arg_0: f32) -> vec2<u32> {
    global0 = array<vec4<f32>, 3>();
    var var_0 = select(!vec3<bool>(any(vec3<bool>(true, true, true)), true, (u_input.b << (u_input.a % 32u)) > _wgslsmith_mult_u32(u_input.b, u_input.c.x)), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), all(vec4<bool>(false, true, false, false)))), !(firstTrailingBit(_wgslsmith_sub_i32(-1i, -4889i)) <= 0i));
    var_0 = !select(vec3<bool>(abs(1u) <= min(u_input.c.x, u_input.c.x), true != var_0.x, true & all(vec2<bool>(true, var_0.x))), vec3<bool>(var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x)), any(!vec3<bool>(true, var_0.x, var_0.x))), select(!vec3<bool>(true, var_0.x, var_0.x), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, false))));
    var_0 = !select(vec3<bool>(true, false, var_0.x || true), !vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), arg_0 <= -928f, any(vec2<bool>(false, var_0.x))), vec3<bool>(true, var_0.x, true));
    var var_1 = Struct_1(!select(var_0.x, any(vec2<bool>(true, var_0.x)) & var_0.x, true), !var_0.x);
    return ~min(_wgslsmith_div_vec2_u32(~u_input.c.zy, u_input.c.yz >> (vec2<u32>(91196u, 4294967295u) % vec2<u32>(32u))), max(max(_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(u_input.b, 55669u)), _wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(1u, u_input.c.x))), _wgslsmith_add_vec2_u32(u_input.c.yx, vec2<u32>(u_input.c.x, u_input.c.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).x >> (arg_2.x % 32u), 4294967295u), 57853u);
    return u_input.c.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 72403u, 25639u, u_input.c.x), vec4<u32>(23617u, u_input.c.x, u_input.c.x, u_input.a)))), abs(select(-5913i, -2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.b, 69877u), vec4<u32>(u_input.a, 4294967295u, 17873u, 1u)) % 32u), true)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(false, Struct_1(false, false), Struct_1(true, false), 1u, vec3<f32>(1183f, 102f, 1121f)))) + _wgslsmith_f_op_f32(676f + 1969f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2272f, -1259f))))), vec2<i32>(48830i >> (countOneBits(0u) % 32u), -24197i) >> (vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.b), ~u_input.c.x), ~u_input.c.x) % vec2<u32>(32u)));
    let var_1 = Struct_1(any(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), any(vec4<bool>(false, true, false, true)))), true);
    let var_2 = Struct_2(true, Struct_1(true, !any(select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(false, false, false), vec3<bool>(false, var_1.a, true)))), var_1, 105054u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-160f, _wgslsmith_f_op_f32(-981f * -118f), -144f) + vec3<f32>(1f, 1f, 1f)) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f * -1310f) + -536f), _wgslsmith_f_op_f32(1000f - -806f), 432f)));
    let var_3 = var_2.c;
    var var_4 = func_5(abs(abs(vec4<u32>(max(4294967295u, 168146u), 1352u, var_0.x, ~0u))), reverseBits(31501i), vec2<u32>(_wgslsmith_clamp_u32(~47568u, ~var_0.x, _wgslsmith_mod_u32(4294967295u, u_input.c.x)) ^ 1u, ~firstTrailingBit(var_2.d) | _wgslsmith_div_u32(_wgslsmith_sub_u32(71414u, 0u), select(var_2.d, 1u, false))), vec2<i32>((~(-6588i) & (0i << (var_0.x % 32u))) & ~(~24383i), 2147483647i)).x;
    var var_5 = Struct_2(select(any(select(!vec4<bool>(false, false, var_3.b, true), vec4<bool>(false, false, false, true), any(vec4<bool>(true, false, var_1.a, false)))), true, ~(~var_0.x) == ~(~48833u)), Struct_1(var_2.a, false), Struct_1(false, true), 0u & var_2.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e * var_2.e)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1679f)), _wgslsmith_f_op_f32(trunc(1321f)))))));
    let var_6 = _wgslsmith_add_vec2_i32(-select(vec2<i32>(i32(-1i) * -2147483647i, abs(-16616i)), abs(~vec2<i32>(-14132i, -2147483647i)), var_1.b), -firstLeadingBit(reverseBits(vec2<i32>(41406i, 3107i))));
    let x = u_input.a;
    s_output = StorageBuffer(33866u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5.e.x))), var_5.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.e.x * var_2.e.x) + _wgslsmith_f_op_f32(-var_5.e.x)), var_2.e.x)), -2147483647i, select(var_5.d, 1u, any(vec2<bool>(false, !var_5.c.a))), abs(var_6.x));
}

