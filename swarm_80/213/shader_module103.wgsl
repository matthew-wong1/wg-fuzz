struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = vec4<u32>(1u, _wgslsmith_clamp_u32(global1.x, ~global1.x << (~max(global1.x, global1.x) % 32u), ~(~1u)), _wgslsmith_add_u32(1u, 0u), 0u);
    return u_input.b.x;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec4<bool> {
    global1 = _wgslsmith_mult_vec3_u32(abs(arg_3.c.d.e.yxx), vec3<u32>(arg_3.c.d.b.a, 77681u, 4935u));
    var var_0 = Struct_3(all(arg_3.a.c), arg_3.b.xwz, select(false, (countOneBits(0u) >= arg_3.c.d.e.x) | true, false), arg_3.c.d);
    let var_1 = _wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_add_i32(50287i, arg_0), ~(-9963i), 2147483647i), u_input.b)) < _wgslsmith_mod_i32(arg_0 & (~u_input.c.x ^ (i32(-1i) * -2147483647i)), arg_0);
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~countOneBits(u_input.d.x), 32258u, 1u) ^ u_input.d, vec3<u32>(4294967295u, ~min(~var_0.d.d.x, var_0.d.b.a), min(global1.x, var_0.d.a.a)));
    var var_3 = firstLeadingBit(countOneBits(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 0i, -2147483647i, arg_0), vec4<i32>(-1i, -1i, -9621i, -30996i)), -1i, u_input.c.x))));
    return vec4<bool>(!(_wgslsmith_sub_i32(-43852i, ~u_input.b.x) != firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, arg_0), u_input.b.yz))), var_0.c, var_0.c, select(var_1, true == arg_3.c.c, var_0.a));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(2250f))) + -138f);
    let var_1 = ~vec2<u32>(global1.x, ~(~_wgslsmith_mult_u32(u_input.d.x, global1.x)));
    let var_2 = countOneBits(-18905i);
    global0 = ~11843i;
    var var_3 = Struct_1(59457u, true, !select(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, arg_0, 143f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -1000f, 187f), vec3<f32>(-2471f, 764f, arg_0)))))));
    return Struct_1(~(~4294967295u), var_3.c.x, func_3(_wgslsmith_div_i32(var_2, _wgslsmith_add_i32(func_2(u_input.c), 1i)), -160f, _wgslsmith_clamp_i32(select(u_input.c.x, var_2, false), -u_input.a.x, -u_input.b.x) > 19077i, Struct_4(Struct_1(u_input.d.x, any(var_3.c.xx), select(var_3.c, vec4<bool>(var_3.c.x, false, var_3.b, false), var_3.b), _wgslsmith_f_op_vec3_f32(max(var_3.d, vec3<f32>(var_3.d.x, -1143f, var_3.d.x)))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-var_3.d.x)), Struct_3(var_3.c.x || var_3.c.x, vec3<f32>(-345f, 534f, var_3.d.x), var_3.b, Struct_2(Struct_1(1u, false, var_3.c, vec3<f32>(-1493f, 1000f, 1122f)), Struct_1(70826u, var_3.c.x, vec4<bool>(false, true, var_3.b, var_3.c.x), var_3.d), Struct_1(var_3.a, false, var_3.c, var_3.d), vec4<u32>(global1.x, 4294967295u, 1u, 0u), vec4<u32>(1u, 32030u, 4294967295u, global1.x))))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.d.x), -455f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) * _wgslsmith_f_op_f32(335f + 1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(-758f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1523f) + 1079f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(202f + -361f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(922f + 590f) * _wgslsmith_div_f32(380f, -871f)), _wgslsmith_f_op_f32(f32(-1f) * -770f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-188f, -369f, -1154f, 689f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -734f, -1167f, -286f)), vec4<bool>(true, true, true, true))))), vec4<bool>(false, false, func_1(2473f).b, true))), Struct_3(!(true | (-33705i >= u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, -1000f), _wgslsmith_f_op_f32(1225f - -1220f), _wgslsmith_f_op_f32(round(-2033f)))), true, Struct_2(Struct_1(global1.x, 34364i < u_input.c.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, 889f, -1534f))), Struct_1(29705u, select(false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-880f, -451f, 1356f) - vec3<f32>(1834f, 1176f, 395f))), func_1(_wgslsmith_f_op_f32(-467f - 301f)), vec4<u32>(global1.x ^ 1u, abs(1u), 0u, u_input.d.x ^ 34738u), min(vec4<u32>(118560u, 1u, u_input.d.x, 50320u) | vec4<u32>(global1.x, 73891u, 0u, u_input.d.x), vec4<u32>(global1.x, 27446u, u_input.d.x, 0u)))));
    let var_1 = Struct_4(Struct_1(u_input.d.x, var_0.c.d.b.d.x < -418f, select(func_3(_wgslsmith_mod_i32(u_input.c.x, 17130i), _wgslsmith_f_op_f32(select(var_0.b.x, 107f, var_0.a.c.x)), false, Struct_4(var_0.a, var_0.b, var_0.c)), func_1(_wgslsmith_f_op_f32(var_0.c.b.x * var_0.c.d.a.d.x)).c, true), vec3<f32>(-619f, _wgslsmith_f_op_f32(var_0.a.d.x * _wgslsmith_div_f32(var_0.c.b.x, var_0.b.x)), _wgslsmith_f_op_f32(var_0.c.d.b.d.x - 389f))), vec4<f32>(_wgslsmith_f_op_f32(select(var_0.c.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-816f)), -267f)), all(select(var_0.a.c.yw, var_0.a.c.wy, var_0.a.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1917f, _wgslsmith_f_op_f32(-var_0.c.b.x)) - var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(-var_0.a.d.x))) + _wgslsmith_div_f32(var_0.b.x, -293f)), var_0.a.d.x), var_0.c);
    let var_2 = var_1;
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(25693u, vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(-815f - _wgslsmith_div_f32(var_2.b.x, -1277f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(round(2261f))))))), 32200i, var_1.a.d.x);
}

