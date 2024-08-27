struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(187f, _wgslsmith_f_op_f32(min(-638f, -978f)))))), vec2<f32>(_wgslsmith_f_op_f32(-1024f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 1000f))), true));
    var var_1 = select(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, all(vec3<bool>(false, false, false)), all(vec2<bool>(true, false)))), !vec4<bool>(all(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true)), select(true, true, select(false, false, false))), any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true), false)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(949f, _wgslsmith_f_op_f32(trunc(var_0.x))))));
    let var_2 = Struct_1(297f, false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(410f)))), var_0.x)));
    var_1 = vec4<bool>(select(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1012f, 2476f, false))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 909f)), var_2.b), true, all(select(!(!vec2<bool>(var_2.b, false)), vec2<bool>(any(vec4<bool>(var_1.x, var_1.x, false, false)), var_1.x), !(!var_1.zw))), true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, var_2.c.x)))) * var_2.c.x), -866f, !var_2.b)) >= _wgslsmith_f_op_f32(-var_0.x);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = Struct_1(arg_1, func_3() | !(!func_3()), arg_2.c);
    let var_1 = vec2<i32>(max(-1i, arg_3.x), ~(-countOneBits(29486i)));
    let var_2 = var_0;
    var var_3 = _wgslsmith_mod_vec4_i32(arg_3 & vec4<i32>(arg_3.x, abs(var_1.x & -1i), arg_3.x | (i32(-1i) * -2147483647i), -32080i), arg_3);
    var_3 = vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i);
    return _wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(u_input.c.x), ~u_input.a, u_input.e.x), 4386u);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(u_input.d.x, max(39216u, min(~_wgslsmith_add_u32(u_input.b.x, 16344u), func_2(-364f, _wgslsmith_f_op_f32(726f - 386f), Struct_1(348f, false, vec2<f32>(1489f, -1000f)), vec4<i32>(0i, -2147483647i, -73531i, -67269i)))));
    var var_1 = 22337u;
    var var_2 = u_input.e.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1785f + -874f), -1548f)))));
    let var_4 = all(select(vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true), !vec2<bool>(true, any(vec4<bool>(true, false, true, true)))));
    return Struct_1(-1604f, func_3(), _wgslsmith_f_op_vec2_f32(exp2(var_3)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, arg_0.c.x, arg_0.c.x)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.x, -1045f, arg_0.a))), vec3<f32>(arg_0.a, -250f, arg_0.a))))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), vec3<i32>(_wgslsmith_clamp_i32(~(~1i), _wgslsmith_mult_i32(~1i, 1i), -1i), _wgslsmith_mod_i32(-86336i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-1i, -46007i)), vec2<i32>(-63638i, 63462i))), ~1i));
    var var_1 = Struct_1(var_0.a, var_0.b, func_1().c);
    var var_2 = func_4(func_4(func_1(), -abs(-vec3<i32>(-1i, -2147483647i, 1i))), vec3<i32>(-2147483647i, max(firstTrailingBit(-1i) | 5526i, ~reverseBits(0i)), _wgslsmith_dot_vec4_i32(max(select(vec4<i32>(-1i, 16929i, 2379i, -1i), vec4<i32>(-3276i, -31427i, -22122i, -22992i), vec4<bool>(true, var_1.b, true, false)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 24152i, abs(-61695i), -1077i))));
    let var_3 = Struct_1(379f, !var_2.b, _wgslsmith_f_op_vec2_f32(select(var_2.c, var_0.c, vec2<bool>(false, true))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().a));
    let var_5 = var_0.b;
    var var_6 = !vec2<bool>(func_1().b, var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-(i32(-1i) * -37957i), 1i));
}

