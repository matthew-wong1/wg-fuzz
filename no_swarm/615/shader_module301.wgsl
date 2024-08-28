struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(32514u, 20798u), vec2<f32>(1964f, -1454f));

var<private> global1: vec2<i32>;

var<private> global2: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    global2 = global0.a.x;
    var var_0 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(trunc(arg_0.b)));
    global0 = arg_0;
    var var_1 = select(firstLeadingBit(-1i), abs(-1i), any(vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), true)));
    global1 = vec2<i32>(~_wgslsmith_mult_i32(~(-u_input.a), min(42337i, 5847i)), u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, -609f), global0.b, select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    global1 = vec2<i32>(-1i, -(_wgslsmith_dot_vec3_i32(u_input.b.ywx, u_input.b.wyz) & _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))) & u_input.b.yz;
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), global0.b.x, -1099f, -886f));
    let var_1 = arg_1;
    global2 = 1u;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(select(~arg_1.a << (abs(arg_1.a) % vec2<u32>(32u)), vec2<u32>(arg_1.a.x, var_1.a.x >> (arg_0.a.x % 32u)), select(any(vec2<bool>(true, false)), true, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-141f, arg_0.b.x))))))), -abs(abs(u_input.b.x)))).x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2)), global0.b.x)) * 297f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.b.x, 123f, -670f), vec3<f32>(arg_2.b.x, global0.b.x, -712f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, -243f, -1126f) - vec3<f32>(global0.b.x, global0.b.x, 915f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-global0.b.x), 1085f))))));
    let var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(~arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<u32>(arg_0.x, arg_2.a.x), var_0.zy), ~u_input.b.x)))), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(875f, -1645f, arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))))));
    var var_2 = vec3<u32>(arg_0.x, ~(~(~16608u)), _wgslsmith_mod_u32(23537u, 4294967295u));
    global1 = min(abs(u_input.b.zy), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_clamp_i32(global1.x, u_input.b.x, global1.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global1.x, 2147483647i, u_input.a, u_input.b.x)), ~vec4<i32>(-2147483647i, global1.x, -1i, -22238i)), -(~u_input.b.x))));
    let var_3 = countOneBits(~vec3<u32>(_wgslsmith_add_u32(arg_2.a.x | arg_2.a.x, ~73962u), _wgslsmith_add_u32(1u, ~arg_2.a.x), 1u));
    return arg_1.xzz;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global0.a, vec2<f32>(722f, _wgslsmith_f_op_f32(min(-109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x))))));
    global1 = u_input.b.yw;
    var_0 = Struct_1(~global0.a, _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(var_0.b - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 2968f))));
    let var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)) <= -1341f, false, all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), func_2(vec2<u32>(global0.a.x, 66299u), vec4<bool>(false, false, false, true), arg_0), vec3<bool>(true, true, true)))), !vec3<bool>(true, true, any(vec3<bool>(true, true, true))), !vec3<bool>(all(func_2(vec2<u32>(4294967295u, 1u), vec4<bool>(false, true, true, true), Struct_1(vec2<u32>(var_0.a.x, global0.a.x), arg_0.b)).yx), true, !any(vec4<bool>(false, false, false, false))));
    let var_2 = Struct_1(~(~vec2<u32>(var_0.a.x, arg_0.a.x) | min(arg_0.a, abs(vec2<u32>(0u, global0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2018f, 1000f)) * vec2<f32>(-1283f, -127f)))));
    return Struct_1(~(~var_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(-arg_0.b.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_f_op_f32(step(var_0.b.x, global0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, global0.b);
    global2 = 24526u;
    global1 = vec2<i32>(global1.x, 0i);
    var var_1 = func_1(Struct_1(vec2<u32>(6336u, ~37904u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.x)) - var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(sign(global0.b.x))))));
    let var_2 = _wgslsmith_dot_vec4_i32(u_input.b, u_input.b & vec4<i32>(_wgslsmith_dot_vec4_i32(-u_input.b, reverseBits(u_input.b)), 10280i, _wgslsmith_add_i32(-u_input.b.x, ~(-51664i)), 0i));
    let var_3 = select(!vec4<bool>(func_2(select(vec2<u32>(var_1.a.x, 45593u), vec2<u32>(var_0.a.x, global0.a.x), true), vec4<bool>(true, true, true, true), func_1(Struct_1(var_1.a, vec2<f32>(256f, var_1.b.x)))).x, true, var_1.b.x != _wgslsmith_f_op_f32(min(global0.b.x, var_1.b.x)), (var_1.b.x != global0.b.x) & (global0.a.x == 1u)), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec4<bool>(false, true, false, true)), true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, all(vec2<bool>(false, true)), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false), any(vec2<bool>(true, true))), vec4<bool>(var_0.a.x == 4588u, true, func_2(var_1.a, vec4<bool>(false, true, true, false), Struct_1(vec2<u32>(0u, global0.a.x), global0.b)).x, any(vec4<bool>(false, true, true, true))))), select(vec4<bool>(true, any(func_2(vec2<u32>(1u, 1u), vec4<bool>(false, true, true, false), Struct_1(var_1.a, vec2<f32>(var_1.b.x, var_1.b.x))).xy), false, true), !vec4<bool>(true, true, all(vec4<bool>(true, true, false, false)), true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true))));
    let var_4 = Struct_1(var_1.a, _wgslsmith_div_vec2_f32(global0.b, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, var_1.b.x, 1000f, -1702f)))), 0u, var_2, _wgslsmith_div_vec2_u32(var_0.a, var_4.a), u_input.b.xz);
}

