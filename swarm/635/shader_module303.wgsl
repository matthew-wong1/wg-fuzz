struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-485f, -835f, 1021f, -414f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    return global0.x;
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, true))), true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-15559i, _wgslsmith_add_i32(u_input.b, u_input.a), u_input.c << (0u % 32u), 1i), vec4<i32>(~2147483647i, 0i, u_input.c, u_input.c << (4294967295u % 32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, 14471i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.a, -31561i), vec4<i32>(u_input.c, u_input.b, -2147483647i, u_input.a)))) & vec4<i32>(~(~u_input.b), ~u_input.a, -31149i | _wgslsmith_clamp_i32(15900i, u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.c, u_input.c), vec3<i32>(2147483647i, -1i, u_input.b))), Struct_1(true, vec4<bool>(true, !(u_input.b >= -1i), true, false)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1068f, 188f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -474f, -978f, 2322f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1033f, global0.x, -511f)))))));
    var var_1 = var_0.c;
    var var_2 = vec4<u32>(1u | abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(38290u, 1u), 94944u, ~4294967295u)), 1u, 4294967295u, 0u);
    let var_3 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f - 290f) - global0.x);
}

fn func_1() -> Struct_1 {
    global0 = vec4<f32>(1912f, global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    global0 = vec4<f32>(-294f, 266f, _wgslsmith_f_op_f32(-2217f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), false)))) - _wgslsmith_f_op_f32(step(2917f, 1008f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1417f) * _wgslsmith_f_op_f32(func_3())));
    let var_0 = 1u;
    var var_1 = select(select(vec2<bool>(true, any(vec2<bool>(false, false))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, any(vec3<bool>(false, true, true))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true)), true);
    let var_2 = Struct_2(Struct_1(var_1.x != true, !(!vec4<bool>(var_1.x, var_1.x, false, var_1.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-30145i, -2147483647i, u_input.b), vec3<i32>(u_input.b, u_input.b, -16142i)), u_input.b), vec4<i32>(43624i, -2147483647i, _wgslsmith_mult_i32(3412i, u_input.a), i32(-1i) * -9677i)) & -(~vec4<i32>(-2147483647i, u_input.a, u_input.c, u_input.c)), Struct_1(~var_0 <= var_0, select(select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), !vec4<bool>(false, false, var_1.x, var_1.x), true), select(select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), true), vec4<bool>(var_1.x, true, var_1.x, true), var_1.x), any(vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = vec4<f32>(-644f, 171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(any(var_0.b), true, var_0.a), var_0.a)) + global0.x), -444f);
    var var_1 = Struct_1(false, func_1().b);
    var_1 = Struct_1(true, vec4<bool>(func_1().b.x, true, var_0.a, all(var_1.b)));
    var var_2 = _wgslsmith_sub_u32(~select(11009u, 1u, !func_1().a), firstLeadingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 10271u)), vec2<u32>(1u, ~50506u))));
    var_0 = Struct_1(false, var_1.b);
    let var_3 = vec4<f32>(global0.x, 896f, 550f, _wgslsmith_f_op_f32(global0.x - 978f));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1038f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1210f + global0.x), _wgslsmith_f_op_f32(min(-1133f, var_3.x)))) + var_3.x), var_3.x, _wgslsmith_f_op_f32(floor(-2128f)));
    let var_4 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(min(~vec4<i32>(17022i, u_input.c, 1i, 58049i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.c, -98862i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b))), -vec4<i32>(u_input.b, 18221i, 2147483647i, u_input.a))), vec3<i32>(~0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, u_input.c), vec2<i32>(u_input.c, u_input.b)), ~countOneBits(vec2<i32>(-1i, 30497i))), u_input.a), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(15555u, 32485u), vec2<u32>(30388u, 1373u), var_0.b.zy)), ~0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.zy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4 * var_3.wy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, 2647f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x + 167f), -1361f))));
}

