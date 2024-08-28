struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec3<bool>(true, true, false)), vec2<i32>(0i, 1i), Struct_1(vec3<bool>(true, true, false)));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = arg_2.d;
    global0 = Struct_2(true, Struct_1(select(vec3<bool>(arg_2.e.x != 520f, true, any(arg_0.xx)), !select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(false, false, arg_2.b.a.x), var_0.a.x), arg_2.c.x)), vec2<i32>(1i, u_input.a), Struct_1(global0.b.a));
    var var_1 = arg_3;
    var_1 = Struct_5(var_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_3.b + var_1.b), vec2<f32>(-346f, _wgslsmith_f_op_f32(-var_1.b.x)))), _wgslsmith_f_op_vec2_f32(max(var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b * arg_3.b)))), select(arg_2.d.a.xz, global0.b.a.xy, !select(var_0.a.xx, vec2<bool>(false, false), arg_0.zy)))), select(~arg_3.c, arg_3.c, true));
    global0 = Struct_2(true, Struct_1(arg_0), vec2<i32>(4302i, _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec2_i32(global0.c, vec2<i32>(-25872i, -8413i) & global0.c))), Struct_1(arg_0));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(var_1.b.x, arg_3.b.x), _wgslsmith_f_op_f32(select(arg_1, -616f, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.b + arg_3.b), vec2<f32>(arg_1, 1164f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.b, vec2<f32>(1038f, arg_3.b.x), false))), arg_2.e))))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = 1229f;
    global0 = Struct_2(false, Struct_1(vec3<bool>(false, global0.d.a.x, global0.b.a.x)), vec2<i32>(global0.c.x, u_input.a), Struct_1(select(global0.d.a, vec3<bool>(global0.a, any(vec2<bool>(global0.a, false)), global0.a != true), !vec3<bool>(global0.b.a.x, false, global0.b.a.x))));
    var var_1 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(-39785i, _wgslsmith_div_i32(~global0.c.x, ~2147483647i)), vec2<i32>(1i, u_input.a) >> (~(vec2<u32>(arg_0.x, 4294967295u) ^ vec2<u32>(0u, arg_0.x)) % vec2<u32>(32u))), global0.d, global0.b.a, Struct_1(select(select(select(vec3<bool>(true, global0.b.a.x, global0.b.a.x), vec3<bool>(true, global0.a, global0.a), false), !global0.b.a, global0.a), vec3<bool>(any(global0.b.a.zy), true, global0.d.a.x), global0.b.a)), _wgslsmith_f_op_vec2_f32(func_3(!global0.b.a, 242f, Struct_4(-8285i, Struct_1(!global0.b.a), !global0.b.a, Struct_1(!vec3<bool>(global0.a, true, global0.b.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -586f))), vec2<f32>(-417f, -509f))), Struct_5(_wgslsmith_mult_vec3_u32(~arg_0, ~vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1363f) - vec2<f32>(-812f, 1625f))), ~(vec4<u32>(arg_0.x, 4294967295u, 64674u, 0u) & vec4<u32>(32635u, arg_0.x, arg_0.x, 0u))))));
    global0 = Struct_2(all(vec4<bool>(false, var_1.e.x != var_1.e.x, all(select(vec4<bool>(var_1.c.x, true, true, true), vec4<bool>(var_1.b.a.x, false, true, global0.a), var_1.b.a.x)), true)), Struct_1(var_1.d.a), min(vec2<i32>(var_1.a, global0.c.x), ~global0.c), global0.b);
    let var_2 = !select(!vec4<bool>(var_1.b.a.x, var_1.c.x, global0.b.a.x, true), select(vec4<bool>(arg_0.x >= arg_0.x, false, true, all(vec2<bool>(var_1.b.a.x, global0.d.a.x))), select(select(vec4<bool>(true, true, global0.d.a.x, false), vec4<bool>(global0.d.a.x, true, var_1.c.x, true), vec4<bool>(var_1.d.a.x, global0.a, true, false)), vec4<bool>(global0.b.a.x, global0.b.a.x, var_1.b.a.x, global0.d.a.x), true), true & (var_1.e.x <= -825f)), !select(select(vec4<bool>(false, true, true, var_1.b.a.x), vec4<bool>(global0.b.a.x, global0.a, true, global0.b.a.x), global0.b.a.x), !vec4<bool>(true, var_1.d.a.x, var_1.b.a.x, false), vec4<bool>(true, true, true, true)));
    return -512f;
}

fn func_1() -> StorageBuffer {
    var var_0 = global0.b.a.x | !global0.b.a.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f + -1818f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(1u, 43335u, 17711u)))) - 379f));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(697f, var_1.x, -1404f, var_1.x) - vec4<f32>(1537f, -1712f, 1827f, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_1.x)))));
    let var_3 = select(vec2<bool>(global0.d.a.x, all(global0.b.a) || true), !global0.d.a.xy, global0.d.a.x);
    let var_4 = !vec4<bool>(var_3.x, any(vec4<bool>(global0.d.a.x, var_3.x, false, !global0.b.a.x)), var_3.x, any(!vec4<bool>(global0.d.a.x, var_3.x, false, var_3.x)));
    return StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(337f + var_2.x), _wgslsmith_f_op_f32(var_1.x * -479f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1000f)), -200f, _wgslsmith_f_op_f32(-var_1.x))), global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1467f), -472f)), _wgslsmith_f_op_f32(-1252f - _wgslsmith_f_op_f32(-1166f * -2098f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(167f, -893f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) * var_1.zy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-777f * -193f), _wgslsmith_f_op_f32(-499f * 1920f)) * var_1.xy)));
    var var_3 = firstTrailingBit(-2147483647i);
    let var_4 = ~u_input.a;
    let var_5 = -61551i;
    let var_6 = var_4;
    let x = u_input.a;
    s_output = func_1();
}

