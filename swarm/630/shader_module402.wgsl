struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -384f;

var<private> global1: Struct_5 = Struct_5(1289f, 129118u, Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(1i, i32(-2147483648)), false, vec2<bool>(false, true), vec3<i32>(-30514i, -3500i, -16924i)), Struct_4(Struct_2(vec3<f32>(412f, -1282f, -2019f), 326f, 1i, 1u), vec4<bool>(false, false, true, true)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = -223f;
    var var_1 = _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(-2147483647i, arg_2.b.x, arg_1.x, arg_0.c << (u_input.d.x % 32u)));
    var var_2 = select(global1.c.a.xwx, arg_2.a.wzy, arg_2.d.x);
    var_2 = vec3<bool>(false, any(select(!arg_2.a.wxw, global1.c.a.yzz, select(select(vec3<bool>(false, true, true), global1.d.b.zxz, arg_2.a.x), global1.c.a.wwx, !global1.c.a.xyx))), _wgslsmith_clamp_u32(15638u, 50326u, u_input.d.x) > ~arg_0.d);
    global0 = _wgslsmith_f_op_f32(step(805f, -1037f));
    return ~1u > ~_wgslsmith_div_u32(u_input.a.x, 4294967295u);
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> f32 {
    var var_0 = vec3<i32>(abs(u_input.c.x), ~_wgslsmith_div_i32(-27909i, -arg_1.c.b.x), arg_1.c.e.x);
    let var_1 = arg_1;
    global0 = var_1.d.a.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global1.d.a.b), global1.d.a.b);
    var_2 = global1.d.a.a.yx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-943f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f * _wgslsmith_f_op_f32(step(1899f, _wgslsmith_f_op_f32(-880f - 547f)))) * _wgslsmith_f_op_f32(f32(-1f) * -817f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global1 = Struct_5(_wgslsmith_f_op_f32(exp2(global1.a)), 70084u, arg_0, Struct_4(global1.d.a, arg_0.a));
    var var_0 = global1.c;
    let var_1 = !(!global1.c.a);
    let var_2 = countOneBits((_wgslsmith_mult_vec3_u32(~u_input.d, u_input.d) & (vec3<u32>(global1.b, 4294967295u, u_input.a.x) | ~u_input.a.zwx)) << (vec3<u32>(u_input.a.x, 21125u, u_input.a.x) % vec3<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-869f, 565f) + global1.d.a.b), 1378f))), _wgslsmith_f_op_f32(step(244f, _wgslsmith_f_op_f32(func_4(select(func_3(global1.d.a, arg_0.b, arg_0, var_1.x), false, var_1.x || var_0.a.x), Struct_5(global1.d.a.b, var_2.x, global1.c, Struct_4(Struct_2(vec3<f32>(-119f, 1192f, -1380f), global1.a, 2147483647i, 24462u), vec4<bool>(arg_0.d.x, true, false, false)))))))));
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    global1 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d.a.a.x))), 8025u >> (~global1.d.a.d % 32u), Struct_1(select(vec4<bool>(!global1.c.c, select(false, global1.c.c, false), func_2(Struct_1(vec4<bool>(global1.d.b.x, global1.d.b.x, global1.d.b.x, true), vec2<i32>(2147483647i, -2147483647i), global1.d.b.x, vec2<bool>(false, global1.c.d.x), vec3<i32>(30354i, -6484i, u_input.b.x)), global1.c.e.x), false), !(!global1.d.b), !vec4<bool>(global1.d.b.x, false, global1.d.b.x, global1.c.c)), vec2<i32>(-1i) * -vec2<i32>(-1i, 2147483647i), ~_wgslsmith_clamp_u32(47737u, 29683u, 31598u) >= _wgslsmith_div_u32(~1u, _wgslsmith_add_u32(u_input.a.x, 0u)), vec2<bool>(true, !(global1.c.d.x | global1.d.b.x)), u_input.c.zxw), global1.d);
    let var_0 = global1.c;
    var var_1 = global1.d.a.b;
    var var_2 = Struct_1(!select(vec4<bool>(!var_0.d.x, any(vec3<bool>(global1.d.b.x, false, global1.d.b.x)), global1.c.c, any(var_0.a)), global1.c.a, select(arg_0.x != -1i, global1.d.b.x, true)), var_0.b ^ _wgslsmith_add_vec2_i32(abs(vec2<i32>(0i, arg_0.x)) | select(vec2<i32>(-76479i, 30666i), global1.c.b, global1.c.c), countOneBits(-var_0.b)), true, !var_0.d, var_0.e);
    var var_3 = u_input.d.zx;
    return abs(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(vec4<u32>(4294967295u >> (global1.b % 32u), u_input.a.x, ~1u, _wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.d.xz)) >> (~vec4<u32>(4294967295u, 124147u, global1.b, global1.b) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.a.a.x))), -2172f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-909f, global1.a))) + global1.d.a.b))));
    global1 = Struct_5(_wgslsmith_f_op_f32(min(global1.d.a.b, -292f)), _wgslsmith_div_u32(0u, 38566u), global1.c, global1.d);
    var var_2 = vec2<f32>(_wgslsmith_div_f32(1892f, var_1.x), var_1.x);
    let var_3 = ~select(var_0.zy, u_input.a.yy | _wgslsmith_div_vec2_u32(var_0.xw, vec2<u32>(0u, 1u)), vec2<bool>(true, true));
    let var_4 = func_1(~(u_input.c ^ vec4<i32>(u_input.b.x, ~u_input.c.x, -u_input.c.x, ~(-32021i))), 22702u);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.d.a.b - _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 154f) * _wgslsmith_f_op_f32(132f - -1668f)))), 715f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - global1.d.a.b)), -2460f))), var_0.x, vec4<u32>(countOneBits(~global1.d.a.d), select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 52628u), vec2<u32>(46223u, u_input.d.x)), ~var_4), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, var_0.x), vec2<u32>(0u, var_4)), var_4), true), 1u, ~(~_wgslsmith_div_u32(10290u, var_4))), -u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -39897i)) << (vec2<u32>(firstLeadingBit(27291u), ~12901u) % vec2<u32>(32u)), min(abs(vec2<i32>(1i, u_input.b.x)), vec2<i32>(-1i, 47783i) & u_input.b)));
}

