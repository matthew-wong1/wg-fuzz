struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    global0 = arg_0;
    var var_0 = -2147483647i;
    var var_1 = Struct_3(~u_input.b);
    let var_2 = var_1.a.x << (u_input.e.x % 32u);
    var_1 = Struct_3(u_input.a.xx);
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e, u_input.e) & u_input.e, _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(59945u, 91148u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), u_input.e))) | u_input.e.x;
}

fn func_2() -> bool {
    global2 = all(global0.d);
    let var_0 = _wgslsmith_clamp_u32(1u | max(func_3(Struct_1(vec3<f32>(global0.b, global0.b, global0.a.x), global0.b, vec3<bool>(global0.c.x, global0.d.x, true), vec2<bool>(true, global0.d.x)), -2147483647i), 4746u), ~u_input.e.x, u_input.c);
    var var_1 = firstTrailingBit(u_input.b.x & u_input.a.x);
    var_1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, u_input.a.x), -2147483647i), firstTrailingBit(firstTrailingBit(4772i))) ^ u_input.b.x;
    return !(_wgslsmith_f_op_f32(-global0.a.x) <= global0.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global2 = !arg_0.c.x;
    var var_0 = select(select(arg_0.c, !(!arg_0.c), arg_0.c), vec3<bool>(!arg_0.d.x, !any(vec4<bool>(false, global0.d.x, false, false)) & !(!arg_0.c.x), func_2()), select(!(!vec3<bool>(false, arg_0.c.x, global0.d.x)), select(!vec3<bool>(true, false, arg_0.c.x), vec3<bool>(global0.d.x, true, arg_0.b <= -722f), !global0.c), global0.c.x));
    let var_1 = Struct_2(arg_0.a.x, -vec3<i32>(-2929i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b & vec2<i32>(u_input.d, -21299i)), firstLeadingBit(-37662i)), ~_wgslsmith_mult_u32(13830u, u_input.e.x), countOneBits(~min(_wgslsmith_add_u32(u_input.e.x, u_input.c), countOneBits(u_input.e.x))), Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.a + vec3<f32>(136f, _wgslsmith_f_op_f32(959f + global0.a.x), 212f)), -362f, vec3<bool>(false, !(!global0.c.x), arg_0.d.x), select(select(vec2<bool>(true, false), !arg_0.c.zy, !var_0.zx), arg_0.c.yy, all(global0.d))));
    var var_2 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-2338f - _wgslsmith_f_op_f32(select(-122f, global0.a.x, select(false, arg_0.c.x, false)))));
    var var_3 = ~(select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, u_input.c, 2493u), vec3<u32>(var_1.d, 14460u, 4294967295u) | vec3<u32>(u_input.c, 75555u, var_1.c)), vec3<u32>(abs(var_1.c), 15837u, var_1.c), true) | vec3<u32>(~_wgslsmith_mod_u32(15445u, var_1.d), ~var_1.c, var_1.c));
    return Struct_2(_wgslsmith_div_f32(arg_1, global0.b), max(vec3<i32>(var_1.b.x, u_input.a.x, -51880i), vec3<i32>(1i, 1i, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(u_input.b.x, 2147483647i)))), ~(1u ^ var_1.d), countOneBits(_wgslsmith_sub_u32(92342u, u_input.e.x)), Struct_1(_wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(arg_1, _wgslsmith_f_op_f32(936f - 1552f), -1306f)), _wgslsmith_f_op_f32(f32(-1f) * -454f), select(!var_1.e.c, var_1.e.c, arg_0.d.x), vec2<bool>(true, all(select(arg_0.c, global0.c, arg_0.c)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_2.x, 1203f)))), arg_3.a, _wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1117f * -675f) - _wgslsmith_f_op_f32(arg_1.x - arg_2.x)) + _wgslsmith_f_op_f32(-global0.a.x)))), global0.c, !(!vec2<bool>(0u == u_input.e.x, global0.d.x)));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1029f + _wgslsmith_f_op_f32(167f + 256f)) * global0.a.x) * func_1(Struct_1(vec3<f32>(var_0.a.x, arg_1.x, arg_3.e.b), _wgslsmith_f_op_f32(-arg_3.e.a.x), !arg_3.e.c, arg_3.e.d), 263f).a), 249f));
    let var_2 = func_1(func_1(arg_3.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1759f, _wgslsmith_div_f32(1557f, -278f)) + global0.b)).e, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-875f)))));
    let var_3 = any(!select(vec3<bool>(var_0.d.x, true, !arg_0.x), vec3<bool>(arg_3.b.x > 41669i, var_2.a >= -775f, !var_2.e.c.x), !(!var_0.c.x)));
    global2 = all(select(arg_0, !vec4<bool>(var_2.a >= var_0.b, func_1(var_2.e, 1187f).e.c.x, var_2.b.x >= -1i, !global0.d.x), true));
    return false && arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-1366f)), _wgslsmith_f_op_f32(abs(global0.a.x)))), _wgslsmith_f_op_f32(-1161f + global0.a.x), !vec3<bool>(global0.d.x, true, select(true, true, global0.c.x)), select(vec2<bool>(select(false, false, false), global0.c.x), vec2<bool>(func_4(select(vec4<bool>(global0.c.x, true, global0.c.x, true), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true), vec4<bool>(true, false, false, global0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1342f, -948f) * global0.a.yz), func_1(Struct_1(global0.a, -1160f, vec3<bool>(global0.c.x, true, false), vec2<bool>(false, true)), global0.b)), global0.c.x), true));
    let var_1 = 1u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global0.a), var_0.b, vec3<bool>(global0.d.x, select(true, func_1(Struct_1(vec3<f32>(global0.a.x, -1843f, -512f), 375f, var_0.c, global0.d), _wgslsmith_f_op_f32(f32(-1f) * -999f)).e.c.x, !func_2()), true), vec2<bool>(true & (true & var_0.d.x), any(var_0.d) & all(!vec4<bool>(global0.c.x, global0.d.x, var_0.d.x, false))));
    global2 = var_2.d.x && true;
    var var_3 = abs(0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, select(~(~select(vec3<u32>(var_1, u_input.c, var_1), vec3<u32>(28357u, 30173u, var_1), true)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(143u, 4877u, var_1) & vec3<u32>(u_input.c, 2097u, 0u), vec3<u32>(63494u, 38021u, 0u)), select(var_0.c.x | any(var_0.c), !(!var_0.c.x), !var_0.c.x)), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - var_0.b) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - 1252f) * var_2.a.x), var_0.a.x))));
}

