struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_clamp_u32(~(~4294967295u), 70206u, select(0u, 1u | min(_wgslsmith_sub_u32(arg_1, arg_1), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 27159i), vec3<i32>(arg_0.e.d, u_input.b, -10203i)), ~vec3<i32>(arg_0.c.b.c, arg_0.a.b.c, -2147483647i)) >= -arg_0.c.b.d));
    global0 = array<Struct_3, 3>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_0.c.a.x))), _wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(arg_0.b, -1299f)))), arg_0.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1516f, _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(arg_0.b - arg_0.c.a.x)), 368f)));
    var var_2 = select(vec3<bool>(select(any(vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x)), true || !arg_0.d.x, true), all(select(arg_0.d, select(vec4<bool>(true, false, arg_0.d.x, arg_0.d.x), vec4<bool>(true, false, arg_0.d.x, arg_0.d.x), vec4<bool>(false, arg_0.d.x, false, false)), !arg_0.d.x)), arg_0.d.x), select(arg_0.d.yyy, select(arg_0.d.zwy, select(select(arg_0.d.yyz, vec3<bool>(true, arg_0.d.x, true), vec3<bool>(false, arg_0.d.x, false)), !arg_0.d.zzw, !arg_0.d.yzw), !(!vec3<bool>(arg_0.d.x, false, arg_0.d.x))), arg_0.d.x), arg_0.d.ywx);
    global0 = array<Struct_3, 3>();
    return ~var_0;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    let var_0 = Struct_1(~func_3(Struct_3(Struct_2(vec3<f32>(-1042f, 1154f, -799f), Struct_1(27176u, u_input.c.zy, 2147483647i, 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -804f), Struct_2(vec3<f32>(1215f, 855f, 242f), Struct_1(0u, u_input.c.yz, -26995i, -7550i)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), Struct_1(arg_1, vec2<u32>(1u, 32788u), u_input.b, -42436i)), _wgslsmith_mod_u32(arg_1, 1u)), _wgslsmith_add_vec2_u32(u_input.c.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, u_input.c.x), 4294967295u), u_input.c.yx)), -6723i, reverseBits(_wgslsmith_add_i32(u_input.b, 2147483647i)) >> (0u % 32u));
    var var_1 = select(19674u, ~(~0u), !(!(var_0.b.x == arg_1)) || false);
    var var_2 = vec4<bool>(!(true | select(any(vec4<bool>(true, false, false, true)), any(vec3<bool>(false, false, true)), u_input.b < 2147483647i)), any(vec4<bool>(_wgslsmith_div_i32(2147483647i, -2147483647i) == -u_input.b, true | any(vec2<bool>(false, false)), true, select(true, 2147483647i > u_input.b, true))), !(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), (_wgslsmith_f_op_f32(ceil(-370f)) < _wgslsmith_f_op_f32(trunc(-1810f))) | true);
    return var_0;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    var var_0 = 1i;
    var var_1 = arg_1;
    var var_2 = func_2(25215i, ~min(0u, firstLeadingBit(70025u)));
    var var_3 = arg_0;
    var var_4 = select(vec3<i32>(-var_2.d, min(9023i, var_3.a.c) << (var_1.c.b.b.x % 32u), var_1.e.c), select(vec3<i32>(-55997i, ~arg_0.a.c | _wgslsmith_dot_vec3_i32(vec3<i32>(2448i, arg_0.a.d, -8886i), vec3<i32>(var_3.a.d, 1i, 2147483647i)), arg_0.a.d), ~(~vec3<i32>(1111i, 0i, -9093i)) | (_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -35812i, arg_0.a.d), vec3<i32>(-1i, 2147483647i, -6011i)) << (u_input.c % vec3<u32>(32u))), var_1.d.wyy), !(!arg_1.d.xyz));
    return _wgslsmith_mod_u32(7802u, _wgslsmith_add_u32(~(~arg_1.e.b.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, arg_1.c.b.b.x), ~1u)) ^ 47867u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<Struct_3, 3>();
    let var_1 = all(select(vec2<bool>(var_0, var_0), !vec2<bool>(!var_0, true), false));
    global0 = array<Struct_3, 3>();
    var var_2 = vec3<i32>(0i, _wgslsmith_div_i32(-(-2147483647i << (u_input.c.x % 32u)), ~23636i), i32(-1i) * -1i) | ~vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 18057i) << (u_input.c.yy % vec2<u32>(32u)), -vec2<i32>(u_input.b, u_input.b)), countOneBits(_wgslsmith_div_i32(u_input.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~func_1(Struct_4(Struct_1(u_input.a, u_input.c.zz, -15122i, var_2.x)), Struct_3(Struct_2(vec3<f32>(-964f, -420f, -1000f), Struct_1(u_input.a, vec2<u32>(1u, 4294967295u), var_2.x, 2147483647i)), -1295f, Struct_2(vec3<f32>(435f, -824f, -942f), Struct_1(u_input.c.x, u_input.c.yx, 0i, 26154i)), vec4<bool>(true, var_0, var_0, false), Struct_1(16822u, u_input.c.xy, 30306i, -54907i))), ~(~u_input.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1424f)) + _wgslsmith_f_op_f32(-956f - 184f)) - -1148f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-944f, -714f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(254f * -1000f))))));
}

