struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(2147483647i, 815f, vec2<f32>(-1887f, -1000f)), vec2<bool>(true, true));

var<private> global3: bool = false;

var<private> global4: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_add_i32(1i, ~1i) << ((firstLeadingBit(58146u) >> (_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global0.x, 0u), vec3<u32>(0u, global0.x, u_input.e)), ~abs(vec3<u32>(u_input.e, 0u, u_input.b.x))) % 32u)) % 32u);
    var var_1 = Struct_2(arg_1.a, arg_1.b);
    let var_2 = _wgslsmith_mult_i32(var_1.a.a, ~10505i);
    let var_3 = u_input.a;
    global4 = _wgslsmith_div_f32(global2.a.b, var_1.a.c.x);
    return arg_1.b;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> vec4<u32> {
    let var_0 = Struct_2(global2.a, select(global2.b, global2.b, select(!arg_3 && false, all(!vec4<bool>(true, false, arg_0, false)), (global1.b < 1086f) & true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, global1.c.x, 589f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2578f, global2.a.b, global2.a.b) + vec3<f32>(global2.a.c.x, 155f, global1.c.x))) * vec3<f32>(_wgslsmith_div_f32(1371f, 304f), global2.a.b, -218f))));
    global2 = Struct_2(var_0.a, func_3(var_1.xx, var_0, _wgslsmith_f_op_f32(ceil(-308f))));
    return vec4<u32>(arg_2.x, u_input.b.x, 77444u, abs(~global0.x));
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b));
    var_0 = global2.a.b;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1159f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1716f))), global2.b.x))));
    global1 = global2.a;
    let var_1 = -70438i;
    return func_3(_wgslsmith_f_op_vec2_f32(max(global2.a.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c, global1.c)) - global1.c))), Struct_2(global2.a, global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.b))));
}

fn func_1() -> f32 {
    let var_0 = u_input.b;
    global2 = Struct_2(global2.a, global2.b);
    let var_1 = func_4(vec4<u32>(1u, var_0.x, _wgslsmith_dot_vec4_u32(func_2(global2.b.x, false, u_input.b.ww, global2.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(14377u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(15593u, 26733u, 1u, 34868u))), u_input.e) & u_input.b);
    global1 = Struct_1(-27267i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1037f)), global1.c.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global2.a.c))))));
    let var_2 = Struct_2(Struct_1(global2.a.a << (var_0.x % 32u), _wgslsmith_f_op_f32(max(global2.a.c.x, -799f)), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.b, -1246f)) * _wgslsmith_f_op_f32(global2.a.c.x - 460f)))), select(select(select(vec2<bool>(global2.b.x, true), func_3(vec2<f32>(146f, global1.b), Struct_2(global2.a, global2.b), global1.b), !var_1), vec2<bool>(global2.b.x, global1.b < -1000f), global2.b), !(!global2.b), !var_1));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976f - -950f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-447f, global2.a.b, global2.b.x)) * -825f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.c.x) + 535f)) + _wgslsmith_f_op_f32(f32(-1f) * -2140f));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = select(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(21651u, u_input.e), ~vec2<u32>(u_input.e, u_input.e))), ~abs(u_input.b.yy), !global2.b.x);
    return Struct_2(arg_1, func_4(u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -685f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.a.c.x, global2.a.c.x))))), vec2<f32>(-724f, -606f));
    let var_1 = ~u_input.b;
    let var_2 = u_input.d.xzw;
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, -398f, global1.c.x)) + vec3<f32>(global1.b, var_0.c.x, var_0.c.x))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1()), global2.a.b, _wgslsmith_f_op_f32(-487f - global1.c.x)), vec3<f32>(-1948f, 1619f, 1104f), any(global2.b)))), Struct_1(~91i, _wgslsmith_f_op_f32(func_1()), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f + -1571f)))), min(1i, ~_wgslsmith_sub_i32(1i, ~u_input.a.x)));
    let var_4 = Struct_2(func_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b, var_0.b, global2.a.b)))), vec3<f32>(874f, 746f, _wgslsmith_f_op_f32(step(1868f, 149f))))), var_0, u_input.d.x).a, !vec2<bool>(func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(265f, 461f, global2.a.b) - vec3<f32>(-940f, 370f, global1.b)), var_0, ~var_3.a.a).b.x, global2.b.x));
    let var_5 = var_4;
    global2 = Struct_2(Struct_1(global1.a, _wgslsmith_div_f32(1205f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.b * var_0.c.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.b) * vec2<f32>(var_4.a.c.x, -722f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1400f, -201f))), global2.a.c)), vec2<bool>(any(var_3.b), func_3(vec2<f32>(1f, _wgslsmith_f_op_f32(global2.a.b * -196f)), var_4, var_5.a.c.x).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1648f, global2.a.b, -623f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.a.c.x, var_4.a.c.x, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.c.x, 442f, var_5.a.b))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_4.a.b, 335f) + vec3<f32>(var_5.a.b, global1.b, global2.a.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.c.x, global1.c.x, -190f))))));
}

