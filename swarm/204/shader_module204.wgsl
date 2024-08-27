struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_4(vec4<i32>(u_input.b, _wgslsmith_div_i32(2147483647i, -abs(u_input.b)), _wgslsmith_mod_i32(u_input.c.x, u_input.b), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 280f)) + _wgslsmith_f_op_f32(max(600f, 242f))))));
    var_0 = Struct_4(-(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, var_0.a.x, var_0.a.x), var_0.a)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(583f - _wgslsmith_f_op_f32(trunc(-1359f))), any(vec4<bool>(true, true, true, true)))));
    return false;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(318f, -883f)), -660f)))));
    let var_1 = u_input.d;
    let var_2 = vec2<bool>(false | !any(vec2<bool>(true, true)), !(!func_3(-948f)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0)), vec2<f32>(var_0, -1306f))))), Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.b), u_input.c), _wgslsmith_mult_vec2_i32(u_input.c, u_input.c)), vec2<i32>(15012i, u_input.b)), select(var_2, !select(var_2, vec2<bool>(var_2.x, var_2.x), var_2.x), !vec2<bool>(var_2.x, var_2.x))), all(select(vec4<bool>(var_2.x, all(vec3<bool>(true, true, var_2.x)), false, all(vec3<bool>(var_2.x, var_2.x, var_2.x))), select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(false, true, var_2.x, true), vec4<bool>(false, var_2.x, true, false), var_2.x), true), true)));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    let var_0 = Struct_4(select(vec4<i32>(_wgslsmith_add_i32(u_input.c.x, arg_0.c.a << (u_input.a % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, arg_0.d.b.a, u_input.b, arg_0.d.b.a), vec4<i32>(-1i, arg_0.a.a, u_input.b, 109977i)), firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, arg_0.d.b.a, 1i))), arg_0.c.a, abs(~u_input.c.x)), vec4<i32>(arg_0.a.a, abs(_wgslsmith_mult_i32(-32434i, -20178i)), u_input.c.x, i32(-1i) * -15638i), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d.a.x + -1469f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d.a.x))))))));
    let var_1 = arg_0;
    var var_2 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_0.d.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), 1812f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.a.x), _wgslsmith_f_op_f32(-1068f * 1000f)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.d.a.x, -554f))), _wgslsmith_f_op_f32(trunc(-679f)))) * _wgslsmith_div_vec2_f32(var_1.d.a, _wgslsmith_f_op_vec2_f32(-var_1.d.a)));
    var var_3 = 16895u;
    return Struct_2(arg_0.c.a, select(arg_0.a.b, arg_0.a.b, vec2<bool>(var_1.b.x, var_1.b.x)));
}

fn func_1() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, 646f) + vec2<f32>(1654f, 610f))))))), func_4(Struct_5(Struct_2(u_input.c.x, vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(_wgslsmith_mult_i32(u_input.b, u_input.c.x), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), func_2())), all(vec3<bool>(true, true, true)));
    var var_1 = Struct_1(vec3<i32>(~49319i, abs(-1i) >> ((u_input.d.x & 4294967295u) % 32u), i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -928f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1399f))));
    let var_3 = firstLeadingBit(select(vec2<i32>(~_wgslsmith_mod_i32(-4395i, u_input.c.x), _wgslsmith_add_i32(var_1.a.x, func_2().b.a)), select(select(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(var_0.b.a, var_1.a.x), var_0.c), ~u_input.c, var_0.b.b) << (max(u_input.d, u_input.d) % vec2<u32>(32u)), var_0.b.b.x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, 713f)));
    return !all(!vec4<bool>(var_0.c, true, true, func_2().b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_2().b;
    let var_2 = -max(vec3<i32>(-40451i, -(var_1.a | var_1.a), abs(u_input.b << (u_input.a % 32u))), firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_1.a), vec3<i32>(35701i, 1i, -30456i))));
    var var_3 = var_2;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~0u);
}

