struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool>;

var<private> global2: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_4 {
    global2 = 1u;
    return Struct_4(arg_1.a, _wgslsmith_div_f32(1325f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) ^ vec4<u32>(0u, u_input.a, u_input.a, u_input.a)) << (u_input.a % 32u)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1460f + 1692f))), _wgslsmith_f_op_f32(2340f * arg_0.c.a), -112f, _wgslsmith_f_op_f32(abs(1189f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-785f, arg_2.c, 784f, 604f)), vec4<f32>(arg_0.c.b, arg_0.c.d.x, arg_2.b, arg_2.b)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, arg_2.a, arg_3.b, -1354f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, arg_0.c.c, 1962f, 181f) + vec4<f32>(arg_2.d.x, -744f, 1312f, arg_3.b)) + vec4<f32>(arg_2.d.x, arg_3.b, 398f, 720f))), !vec4<bool>(global1.x, u_input.a > u_input.a, !global1.x, false))));
    var var_1 = var_0.wyw;
    let var_2 = !select(select(!vec4<bool>(true, arg_0.a, true, arg_0.a), !(!vec4<bool>(true, true, true, arg_0.a)), !select(vec4<bool>(false, true, global1.x, arg_0.a), vec4<bool>(true, global1.x, global1.x, false), false)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, false, global1.x, global1.x)), select(!vec4<bool>(true, false, false, arg_0.a), select(vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, true, global1.x, arg_0.a)), select(vec4<bool>(arg_0.a, global1.x, global1.x, arg_0.a), vec4<bool>(true, arg_0.a, global1.x, true), global1.x)), select(!vec4<bool>(global1.x, arg_0.a, false, true), vec4<bool>(arg_0.a, true, global1.x, true), !vec4<bool>(global1.x, true, arg_0.a, true))), select(vec4<bool>(1u != arg_1.x, false, all(global1.zz), !global1.x), vec4<bool>(true, true, true, true), any(vec2<bool>(false, arg_0.a))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(568f, arg_0.c.b, arg_3.b))))), _wgslsmith_f_op_vec3_f32(-var_0.yww)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(arg_0.c.d.x - _wgslsmith_f_op_f32(arg_2.c - var_1.x)), _wgslsmith_f_op_f32(-2481f - _wgslsmith_f_op_f32(arg_3.b * arg_0.c.c)))));
    let var_3 = arg_0;
    return -37846i;
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = ~vec2<i32>(func_3(Struct_5(true, vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_3), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(29933u, u_input.a, u_input.a, 32269u), vec4<u32>(u_input.a, 68264u, u_input.a, u_input.a)), vec4<u32>(1u, u_input.a, 4294967295u, 33387u)), arg_3, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2203f, -1900f) * arg_3.d), Struct_3(arg_2))), func_3(Struct_5(true, ~arg_1.b, Struct_1(-796f, arg_3.c, -1750f, arg_3.d)), vec4<u32>(u_input.a, u_input.a, ~u_input.a, _wgslsmith_clamp_u32(u_input.a, 0u, u_input.a)), arg_3, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.a, -2829f)), Struct_3(Struct_2(arg_2.a)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false || ((select(~1i, -2147483647i, func_1(false, Struct_5(true, vec4<i32>(-3174i, -54576i, 37611i, 2147483647i), Struct_1(479f, 459f, 481f, vec2<f32>(386f, 509f))), Struct_2(vec2<i32>(1i, -7796i)), Struct_1(-589f, 212f, 983f, vec2<f32>(1478f, 1169f)))) & (i32(-1i) * -8359i)) < 1i);
    var var_1 = -1321f;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(242f, -1105f) - -2253f), _wgslsmith_div_f32(1120f, _wgslsmith_f_op_f32(-595f + -924f)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(1755f * 1649f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1121f, -426f, -1361f))))), select(!global1.xyw, global1.wxz, (true & global1.x) & (global1.x | false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1189f, _wgslsmith_f_op_f32(f32(-1f) * -1047f), -2444f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1062f, -477f, 2683f) * vec3<f32>(177f, -1322f, -889f)))))));
    let var_3 = Struct_5(false, max(-vec4<i32>(1i, max(-1i, 9700i), 35349i, 1i), vec4<i32>(_wgslsmith_add_i32(-19031i, i32(-1i) * -1i), -2147483647i, -2147483647i, ~49245i)), Struct_1(-1142f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_f32(579f - _wgslsmith_f_op_f32(max(130f, -842f)))), -459f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, _wgslsmith_div_f32(-747f, var_2.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1725f, 307f))))))));
    global2 = 0u;
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_2.yy * var_3.c.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.c.d)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 767f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1395f, var_2.x))) - _wgslsmith_f_op_vec2_f32(var_2.xz * var_2.zy))), Struct_3(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1098f, var_2.x))), Struct_3(Struct_2(vec2<i32>(1i, 0i)))).a)).a;
    global1 = vec4<bool>(all(!(!vec4<bool>(global1.x, global1.x, true, false))) || true, var_3.a, true || !(-1i != -var_4.a.x), !all(select(select(global1.wxz, vec3<bool>(false, false, true), false), global1.yzx, any(global1.wyw))));
    var var_5 = var_2.xx;
    var var_6 = select(vec4<bool>(!global1.x, all(!select(vec2<bool>(global1.x, var_3.a), global1.yy, global1.zy)), var_3.a, true), select(select(!(!vec4<bool>(global1.x, false, true, var_3.a)), select(!vec4<bool>(global1.x, false, true, var_3.a), vec4<bool>(false, global1.x, false, true), vec4<bool>(var_3.a, var_3.a, var_3.a, false)), true), select(select(select(vec4<bool>(var_3.a, global1.x, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, global1.x, false), vec4<bool>(true, true, true, global1.x)), !(!vec4<bool>(false, false, global1.x, false)), true), !global1.x), false & (any(global1.zy) && !var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(max(vec2<u32>(0u, u_input.a) << (vec2<u32>(18932u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(1u, 42699u) % vec2<u32>(32u)))), vec4<f32>(var_3.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_5.x))))), 333f, _wgslsmith_f_op_f32(1038f - _wgslsmith_f_op_f32(-var_3.c.d.x))));
}

