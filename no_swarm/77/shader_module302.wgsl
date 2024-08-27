struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(Struct_1(788f, vec2<i32>(1i, -1i), true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(step(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f))));
    global0 = !(((global1.a.c && false) & true) | true);
    var var_1 = Struct_4(any(!select(select(vec3<bool>(global1.a.c, true, global1.a.c), vec3<bool>(global1.a.c, global1.a.c, global1.a.c), vec3<bool>(true, false, global1.a.c)), select(vec3<bool>(global1.a.c, global1.a.c, global1.a.c), vec3<bool>(false, global1.a.c, true), false), true)), 1426f, ~11001i, _wgslsmith_f_op_f32(-var_0));
    global1 = Struct_3(Struct_1(global1.a.a, _wgslsmith_add_vec2_i32(firstLeadingBit(global1.a.b), arg_0.a.zx), true));
    var var_2 = ~vec3<u32>(1u, ~0u, 1u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 47446u, 4294967295u, 90056u), vec4<u32>(43768u, 16350u, 4294967295u, 26133u)));
    return arg_0.a.yy;
}

fn func_2(arg_0: i32) -> Struct_2 {
    return Struct_2(79619u, ~vec4<i32>(~(-1994i) >> (1u % 32u), u_input.a ^ countOneBits(u_input.a), 1i, ~(-40631i)), Struct_1(_wgslsmith_f_op_f32(select(global1.a.a, global1.a.a, global1.a.a == _wgslsmith_f_op_f32(round(global1.a.a)))), func_3(Struct_5(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_0, 2147483647i), vec3<i32>(arg_0, u_input.a, u_input.a)), _wgslsmith_div_f32(global1.a.a, global1.a.a), _wgslsmith_f_op_f32(global1.a.a + global1.a.a)), firstLeadingBit(vec3<i32>(global1.a.b.x, arg_0, -1i))), max(firstLeadingBit(u_input.a), 57855i << (0u % 32u)) < arg_0), select(vec4<bool>(global1.a.c, true, global1.a.a < -1279f, global1.a.c), select(select(!vec4<bool>(global1.a.c, false, global1.a.c, global1.a.c), vec4<bool>(global1.a.c, true, global1.a.c, global1.a.c), global1.a.c && global1.a.c), select(vec4<bool>(global1.a.c, false, true, true), !vec4<bool>(false, false, global1.a.c, global1.a.c), select(vec4<bool>(global1.a.c, global1.a.c, global1.a.c, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, global1.a.c))), global1.a.c), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, global1.a.c, false, global1.a.c), vec4<bool>(global1.a.c, global1.a.c, global1.a.c, false)), select(vec4<bool>(global1.a.c, true, global1.a.c, global1.a.c), vec4<bool>(true, global1.a.c, global1.a.c, false), vec4<bool>(false, false, false, global1.a.c)), !vec4<bool>(global1.a.c, true, false, true))), -vec2<i32>(firstLeadingBit(abs(-1i)), reverseBits(select(58278i, -2147483647i, global1.a.c))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-global1.a.a) > _wgslsmith_f_op_f32(f32(-1f) * -1273f);
    var var_0 = any(select(!select(!vec2<bool>(global1.a.c, true), !vec2<bool>(false, global1.a.c), !vec2<bool>(arg_0.a, false)), select(vec2<bool>(false, true), !vec2<bool>(arg_0.a, true), select(vec2<bool>(true, arg_0.a), !vec2<bool>(false, arg_0.a), !vec2<bool>(arg_0.a, false))), !select(vec2<bool>(false, true), !vec2<bool>(global1.a.c, global1.a.c), select(vec2<bool>(global1.a.c, arg_0.a), vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.a)))));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(arg_0.c, u_input.a) << (_wgslsmith_div_u32(max(arg_1.x, max(arg_1.x, arg_1.x)), firstLeadingBit(~arg_2.x)) % 32u), _wgslsmith_div_i32(u_input.a, firstTrailingBit(-(arg_0.c | arg_0.c))));
    var var_2 = !(!global1.a.c);
    var var_3 = func_2(u_input.a);
    return func_2(select(select(~_wgslsmith_clamp_i32(-4259i, 1i, -13367i), arg_0.c, !arg_0.a), var_1.x, !global1.a.c)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(global1.a.b.x, u_input.a), -2147483647i);
    var var_1 = Struct_3(func_1(Struct_4(global1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)), _wgslsmith_mod_i32(~global1.a.b.x, global1.a.b.x | global1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1152f))), countOneBits(vec3<u32>(abs(1u), max(1u, 40562u), 1u)), abs(vec2<u32>(1u, ~4294967295u))));
    let var_2 = func_2(u_input.a);
    var var_3 = Struct_3(func_1(Struct_4(global1.a.c, _wgslsmith_f_op_f32(min(-225f, _wgslsmith_f_op_f32(abs(1360f)))), reverseBits(reverseBits(2147483647i)), _wgslsmith_f_op_f32(-var_2.c.a)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 10029u, var_2.a), _wgslsmith_mult_vec3_u32(vec3<u32>(20484u, var_2.a, 22044u), vec3<u32>(var_2.a, 16097u, var_2.a)), ~vec3<u32>(var_2.a, 39385u, 29034u)), vec3<u32>(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(49239u, 0u), 1u), func_2(-var_2.e.x).d.yxx), _wgslsmith_div_vec2_u32(~(vec2<u32>(23263u, var_2.a) ^ vec2<u32>(4294967295u, var_2.a)), vec2<u32>(1u, 4294967295u))));
    let var_4 = 61275i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_2.a << (min(countOneBits(var_2.a), 1u) % 32u), 22375u), _wgslsmith_f_op_f32(floor(-702f)), abs(0u), vec3<u32>(var_2.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_2.a, var_2.a), vec2<u32>(23851u, var_2.a))), 24752u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-692f, -238f), vec2<f32>(global1.a.a, -625f))) - vec2<f32>(global1.a.a, 2007f))));
}

