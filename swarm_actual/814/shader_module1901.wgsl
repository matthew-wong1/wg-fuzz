struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1183f, -1998f, -698f), vec3<u32>(1u, 42770u, 36313u), 0i);

var<private> global2: u32 = 0u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-560f, 583f, -2187f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(275f, -2494f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -283f, 549f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 2582f, global1.a.x)))), global1.a), _wgslsmith_div_vec3_u32(~global1.b, vec3<u32>(35710u, 0u, arg_0) & ~global1.b) & abs(~min(global1.b, global1.b)), u_input.a);
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(2667i, 1i), firstLeadingBit((15649i | func_3()) | _wgslsmith_sub_i32(global1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.c, 2147483647i, u_input.a), vec4<i32>(2147483647i, 0i, u_input.a, global1.c)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1380f, global1.a.x, arg_1.x)))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(-global1.a.x)) + _wgslsmith_f_op_vec3_f32(-global1.a)), vec3<u32>(76372u, countOneBits(abs(29228u)), countOneBits(abs(global1.b.x))), global1.c));
    let var_2 = max(4294967295u, select(17098u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(27000u, 10081u) & global1.b.zx, vec2<u32>(0u, 0u)), _wgslsmith_mult_u32(arg_0, var_1.b.b.x) >> (min(0u, 34331u) % 32u)), true));
    let var_3 = all(!select(vec3<bool>(!arg_2, global0.x, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0.x), vec3<bool>(false, arg_1.x, false)), vec3<bool>(true, global0.x, true), select(vec3<bool>(true, arg_1.x, false), vec3<bool>(true, false, arg_1.x), false)), vec3<bool>(arg_1.x, arg_1.x || arg_2, false)));
    return 1f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(444f)) + -1437f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(15193u, vec2<bool>(true, true), global0.x)), _wgslsmith_f_op_f32(global1.a.x * -492f)))), max(global1.b, ~(global1.b | global1.b)), ~global1.c >> (global1.b.x % 32u));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-194f, global1.a.x, -2367f) - vec3<f32>(213f, 1000f, 1369f)))))), var_0.b, _wgslsmith_add_i32(min(countOneBits(i32(-1i) * -21619i), select(countOneBits(9692i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(2147483647i, var_0.c)), !arg_0)), var_0.c));
    var var_1 = 1u;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f * -929f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-644f + var_0.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f - 787f) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), any(vec4<bool>(true, global0.x, arg_0, false)))))), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(step(global1.a.x, -109f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1189f))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(146f, 1741f, false)), var_0.a.x, -200f)))), var_0.b, ~2147483647i);
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * global1.a.x))))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-378f - -726f), 745f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -304f), -194f, _wgslsmith_f_op_f32(-global1.a.x))), ~vec3<u32>(global1.b.x, var_0.b.x, 27011u) << (vec3<u32>(8232u ^ var_0.b.x, 110597u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b.x, 6807u, 1u), vec4<u32>(5887u, 4294967295u, global1.b.x, 0u))) % vec3<u32>(32u)), var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.x);
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.yz | (var_0.b.b.zx | (vec2<u32>(0u, 44853u) | ~vec2<u32>(var_0.b.b.x, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.x, -1020f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1228f, var_0.b.a.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1896f)), var_0.a))), global1.c, ~(~countOneBits(var_0.b.b) | var_0.b.b));
}

