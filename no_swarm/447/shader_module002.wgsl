struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(34118u, 17506u, 12415u));

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, false, false, true), true, Struct_1(-1i), 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_2(~(~firstLeadingBit(vec3<u32>(u_input.a, 8710u, 0u))) ^ (global0.a | vec3<u32>(~u_input.a, 42422u, min(global0.a.x, global0.a.x))));
    global1 = Struct_3(!(!(!global1.a)), select(false, false, global1.a.x), global1.c, ~_wgslsmith_mod_u32(global0.a.x, 1u));
    var var_0 = Struct_4(Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(12664u, 4294967295u, 43970u), ~vec3<u32>(0u, global0.a.x, global0.a.x)) | ~(global0.a & vec3<u32>(u_input.a, global0.a.x, global0.a.x))));
    let var_1 = 950f;
    var_0 = Struct_4(var_0.a);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(var_1 + 526f), 220f, _wgslsmith_f_op_f32(floor(var_1))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f + -977f)), _wgslsmith_f_op_f32(f32(-1f) * -1094f), var_1, var_1))), vec4<f32>(var_1, var_1, -605f, _wgslsmith_f_op_f32(-var_1)), vec4<bool>(global1.a.x, !(!(global1.a.x || true)), global1.a.x, true)));
}

fn func_2() -> Struct_5 {
    let var_0 = i32(-1i) * -(~(~global1.c.a));
    var var_1 = Struct_4(Struct_2(~(~global0.a & global0.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3()))), vec4<f32>(-575f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-364f, 1796f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-683f - _wgslsmith_f_op_f32(step(1723f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1763f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, -363f)))));
    let var_3 = global1.b;
    var var_4 = u_input.b.zy;
    return Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_4.x, -1i, u_input.b.x), u_input.b), u_input.b), ~vec3<i32>(0i, u_input.b.x, u_input.b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_3) -> Struct_3 {
    global0 = Struct_2(vec3<u32>(global1.d, ~1u, ~(u_input.a << (0u % 32u))));
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(79867u, 4294967295u, global0.a.x, 4294967295u), vec4<u32>(~global0.a.x, u_input.a, reverseBits(arg_3.d), global1.d));
    var var_1 = ~6101u;
    let var_2 = Struct_3(select(select(select(!global1.a, select(vec4<bool>(false, false, true, arg_3.a.x), global1.a, global1.b), select(vec4<bool>(false, global1.a.x, global1.a.x, true), vec4<bool>(true, arg_3.a.x, false, false), vec4<bool>(false, global1.b, true, arg_3.b))), global1.a, !(!vec4<bool>(arg_3.b, arg_3.a.x, global1.a.x, arg_3.b))), select(global1.a, vec4<bool>(true, global1.b, true, any(global1.a.xw)), !any(vec2<bool>(global1.a.x, arg_3.a.x))), !any(global1.a.wwy)), (~(~46469u) == ~(~u_input.a)) || arg_3.b, global1.c, global0.a.x);
    let var_3 = 0u;
    return var_2;
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1886f)), _wgslsmith_div_f32(-453f, -735f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1424f, -1929f)))))));
    var var_1 = arg_0;
    var var_2 = ~12802u;
    var_1 = func_4(arg_0.d, func_2(), func_2(), Struct_3(!vec4<bool>(!var_1.a.x, arg_0.a.x, false, global1.b), !var_1.b, Struct_1(39184i), ~abs(abs(2466u))));
    let var_3 = vec3<u32>(~(arg_0.d << (global0.a.x % 32u)), 80268u, ~(~(~_wgslsmith_mult_u32(var_1.d, global0.a.x))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(vec4<bool>(global1.a.x, any(select(select(global1.a.yx, global1.a.yy, vec2<bool>(global1.a.x, global1.a.x)), select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, global1.a.x), global1.a.yx), select(vec2<bool>(true, global1.a.x), vec2<bool>(false, global1.b), global1.b))), global1.b, -1771f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) + _wgslsmith_f_op_f32(func_1(Struct_3(global1.a, global1.b, Struct_1(10217i), global0.a.x))))), all(!select(vec2<bool>(false, true), func_4(4294967295u, Struct_5(global1.c), Struct_5(global1.c), Struct_3(global1.a, global1.b, global1.c, 4790u)).a.ww, !global1.b)), Struct_1(global1.c.a), 4294967295u);
    let var_0 = !(global1.a.x && true);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(-588f - -1000f))));
    let var_2 = func_2().a;
    let var_3 = vec4<bool>(select(any(vec2<bool>(global1.a.x, true)) & global1.b, global1.b, all(select(global1.a, func_4(global0.a.x, Struct_5(Struct_1(u_input.b.x)), Struct_5(Struct_1(-20162i)), Struct_3(vec4<bool>(true, true, global1.b, true), false, Struct_1(u_input.b.x), 141506u)).a, func_4(9964u, Struct_5(var_2), Struct_5(var_2), Struct_3(vec4<bool>(var_0, var_0, false, true), global1.b, var_2, 1u)).a))), global1.b, true, global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, 600f, var_1.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-433f, 279f, 1277f), vec3<f32>(1755f, 896f, 565f))), select(vec3<bool>(false, true, var_0), vec3<bool>(global1.b, var_3.x, false), false)))))), var_1.x);
}

