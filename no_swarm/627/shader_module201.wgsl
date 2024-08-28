struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(0i, 47198i, 18072i, 1i), vec4<i32>(0i, 20439i, 21033i, -31114i), vec4<i32>(i32(-2147483648), -1i, 38169i, 2147483647i), vec4<i32>(6306i, -12915i, -37695i, 39902i), vec4<i32>(-13208i, -54092i, 16023i, i32(-2147483648)), vec4<i32>(11662i, 9530i, 0i, -34303i), vec4<i32>(1i, 2147483647i, 45566i, 0i), vec4<i32>(42332i, i32(-2147483648), 41439i, 0i), vec4<i32>(2147483647i, 2147483647i, -17291i, -1i), vec4<i32>(-28882i, 39208i, 2147483647i, i32(-2147483648)), vec4<i32>(-62038i, -3625i, -82605i, 53013i), vec4<i32>(-1i, 21425i, 0i, 41383i), vec4<i32>(29303i, 1i, i32(-2147483648), 1i), vec4<i32>(28567i, 3526i, -3290i, -6854i), vec4<i32>(0i, -7593i, i32(-2147483648), 22545i), vec4<i32>(-30706i, 0i, -1i, 1i), vec4<i32>(1i, 1i, -41822i, -22798i), vec4<i32>(i32(-2147483648), i32(-2147483648), -11607i, 1i), vec4<i32>(115i, 1i, i32(-2147483648), 20630i), vec4<i32>(38272i, -22074i, 2147483647i, 13972i), vec4<i32>(-47634i, -34131i, -1i, -36974i));

var<private> global2: array<i32, 1> = array<i32, 1>(-12564i);

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    let var_0 = 4294967295u;
    global1 = array<vec4<i32>, 21>();
    global0 = Struct_1(global0.a, true, firstLeadingBit(-1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1567f * _wgslsmith_f_op_f32(910f * global0.d)), -1000f)));
    var var_1 = ~global3.wyx;
    let var_2 = !global0.b;
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d + -201f), 236f)), _wgslsmith_f_op_f32(-global0.d))));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(vec3<bool>(true, global0.b, !global0.b), min(vec3<i32>(-1i) * -global0.a.xzw, global0.a.yzy));
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    return !(!select(vec3<bool>(global0.b || var_0.a.x, global0.b, global0.b), !(!vec3<bool>(global0.b, true, true)), true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec3<f32> {
    global3 = ~min(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, global3.x), 60357u), 4294967295u, ~abs(global3.x), 19614u), ~countOneBits(vec4<u32>(global3.x, 0u, global3.x, 3662u)));
    global2 = array<i32, 1>();
    var var_0 = select(!func_3(), func_3(), !func_3());
    var var_1 = global3.x;
    let var_2 = global3.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(arg_0.xzy, vec3<f32>(global0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.x)), 873f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_1.x, -1473f)), _wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(861f, -290f, arg_0.x)) + vec3<f32>(arg_0.x, 1092f, -1054f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~(~(global3.x << (global3.x % 32u))) & ~(_wgslsmith_add_u32(global3.x, global3.x) & _wgslsmith_mult_u32(4294967295u, global3.x))) >= global3.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1309f, 557f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-147f, global0.d)))), _wgslsmith_f_op_vec2_f32(func_1(true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global0.d, 544f)), _wgslsmith_f_op_f32(global0.d - 108f)) - vec2<f32>(1226f, 501f)), global0.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, _wgslsmith_f_op_f32(-global0.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1576f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1224f, global0.d) + vec2<f32>(global0.d, global0.d)))) - vec2<f32>(1f, _wgslsmith_div_f32(global0.d, _wgslsmith_div_f32(global0.d, 1938f)))));
    var var_2 = !vec4<bool>(all(!(!vec3<bool>(true, global0.b, global0.b))), global0.b, false, !(!(!global0.b)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global0.d, 1130f, -253f), vec4<f32>(-974f, 650f, var_1.x, 244f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1353f, 2108f)))))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0.d, 228f)), _wgslsmith_f_op_f32(f32(-1f) * -1520f), -1749f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, global0.d, _wgslsmith_f_op_f32(abs(-677f)))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, global0.d, var_3.x, -2568f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d, -1358f, -1701f, 1976f), vec4<f32>(357f, var_1.x, var_3.x, -280f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, var_3.x, -857f, 502f))))));
    var_2 = vec4<bool>(true, var_1.x > _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-106f, _wgslsmith_f_op_f32(var_4.x + var_1.x)), -1000f)), all(func_3().zx), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~max(vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(1u, global3.x, global3.x, 4294967295u))));
}

