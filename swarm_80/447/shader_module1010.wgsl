struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    global0 = arg_0.yy;
    global0 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(953f - 676f) + _wgslsmith_f_op_f32(185f - 112f)), 2700f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 747f > _wgslsmith_f_op_f32(trunc(-886f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(775f)), 1f))))));
    global0 = arg_0.yz;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, 729f)) - _wgslsmith_f_op_f32(floor(var_0)));
    return false;
}

fn func_2() -> vec2<bool> {
    global0 = vec2<bool>(!(global0.x != func_3(select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)), -vec4<i32>(global1.a, global1.a, 0i, 53206i), Struct_1(u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 1i), u_input.a.zy))), false);
    global0 = !select(vec2<bool>(func_3(vec3<bool>(global0.x, true, global0.x), u_input.a, Struct_1(22914i), u_input.a.wz), global0.x), !(!vec2<bool>(global0.x, global0.x)), global0.x);
    let var_0 = u_input.d;
    let var_1 = select(u_input.a.x, -(i32(-1i) * -23239i), global0.x);
    let var_2 = -_wgslsmith_div_i32(-var_1, abs(_wgslsmith_add_i32(~var_1, abs(-36265i))));
    return vec2<bool>(false, all(select(vec2<bool>(global0.x || true, false), vec2<bool>(true, global0.x), !(global0.x || true))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = select(!vec2<bool>(global0.x, true), !select(select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x), false), vec2<bool>(true, !global0.x), vec2<bool>(true, select(false, global0.x, false))), true);
    global0 = select(!vec2<bool>(false, global0.x), select(!func_2(), !(!vec2<bool>(global0.x, false)), !vec2<bool>(global0.x, !global0.x)), global0.x);
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_u32(abs(max(101111u, max(u_input.d.x << (u_input.d.x % 32u), 1u))), u_input.d.x);
    var var_2 = -2147483647i;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(182f * _wgslsmith_f_op_f32(-1209f + -336f)), _wgslsmith_f_op_f32(trunc(2055f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1223f, 1475f) * _wgslsmith_f_op_f32(642f - 221f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2625f, 376f))))) - vec4<f32>(_wgslsmith_f_op_f32(1548f * _wgslsmith_div_f32(-592f, -1036f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1061f - 637f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-325f, 381f), _wgslsmith_f_op_f32(f32(-1f) * -1017f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 564f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(-338f + -567f)), _wgslsmith_f_op_f32(-1132f - _wgslsmith_f_op_f32(-686f - -1620f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(f32(-1f) * -640f))), 1f)));
    global0 = vec2<bool>(select(global0.x | any(!vec3<bool>(global0.x, false, global0.x)), global0.x, !global0.x), global0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1736f, var_0.x, 1094f)) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), 1766f, _wgslsmith_f_op_f32(var_0.x + 1334f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1462f, var_0.x, var_0.x, -344f) - vec4<f32>(var_0.x, -349f, -433f, -1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1285f, var_0.x, var_0.x, -735f), vec4<f32>(var_0.x, 873f, var_0.x, var_0.x), vec4<bool>(false, global0.x, true, true)))))));
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(arg_2.a << (1u % 32u), min(arg_1, 2147483647i)), u_input.a.x | ~(-2147483647i)), -vec2<i32>(global1.a, _wgslsmith_add_i32(-2147483647i >> (arg_2.d % 32u), global1.a)));
    return abs(arg_2.c.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = arg_1;
    var var_0 = -(~u_input.a.x);
    let var_1 = select(u_input.d << (~(~u_input.d) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(47624u, u_input.b), ~u_input.d), vec2<bool>(true, 5570u > ~u_input.b)) | select(~(~u_input.d), _wgslsmith_div_vec2_u32(reverseBits(u_input.d) | vec2<u32>(1u, u_input.c), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.d.x), 0u)), false);
    let var_2 = !(!select(!(!vec4<bool>(global0.x, global0.x, true, false)), vec4<bool>(!global0.x, false, var_1.x >= 29943u, global0.x), (var_1.x >> (u_input.d.x % 32u)) < 90794u));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-793f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1210f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(502f)), _wgslsmith_div_f32(278f, 899f)))))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-1f)));
    return func_1(func_1(arg_0, Struct_1(-2147483647i), -1i), arg_0, 4416i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-260f, 1459f, 240f, -769f) * vec4<f32>(959f, 566f, 1282f, 1120f))))))));
    global0 = !(!(!select(vec2<bool>(true, false), !vec2<bool>(true, global0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, global0.x)))));
    let var_1 = 321f;
    global0 = vec2<bool>(!all(select(select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), true), !vec4<bool>(true, global0.x, global0.x, global0.x), global0.x)), false);
    var var_2 = func_5(Struct_1(func_4(func_1(Struct_1(global1.a), Struct_1(u_input.a.x), 2147483647i), -1i, Struct_2(_wgslsmith_sub_i32(-1i, -68889i), u_input.a, u_input.a.zy, u_input.d.x), ~u_input.b)), func_1(func_1(Struct_1(1i << (1u % 32u)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(global1.a, global1.a))), 15700i), func_1(func_1(func_1(Struct_1(u_input.a.x), Struct_1(u_input.a.x), global1.a), Struct_1(1i), global1.a), func_1(Struct_1(-23999i), func_1(Struct_1(global1.a), Struct_1(-6956i), u_input.a.x), u_input.a.x), _wgslsmith_add_i32(1i, ~(-1i))), -func_1(Struct_1(11841i), Struct_1(11874i), u_input.a.x).a));
    let var_3 = vec2<bool>(true, false);
    let var_4 = i32(-1i) * -u_input.a.x;
    var_2 = func_1(Struct_1(28786i), func_1(Struct_1(var_2.a), Struct_1(-2147483647i), _wgslsmith_mult_i32(1i, -func_1(Struct_1(39163i), Struct_1(u_input.a.x), global1.a).a)), _wgslsmith_mult_i32(-24254i, max(global1.a, reverseBits(global1.a))) >> (~select(~49976u, u_input.c | 0u, false) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - 949f) * var_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1179f - var_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(min(1196f, _wgslsmith_f_op_f32(abs(-930f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 * -1251f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(trunc(-1628f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1, -125f)))))), ~1u, var_0.x);
}

