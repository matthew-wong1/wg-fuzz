struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-458f, 1000f);

var<private> global1: Struct_1 = Struct_1(27881i);

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-864i, 9000i), vec2<i32>(1i, 6181i), vec2<i32>(1i, -37627i), vec2<i32>(15615i, 1i), vec2<i32>(1i, 83268i), vec2<i32>(1i, 19750i), vec2<i32>(i32(-2147483648), 10112i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-6339i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(19696i, -74446i), vec2<i32>(-12338i, -33696i), vec2<i32>(14560i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(37342i, 1i), vec2<i32>(6833i, 2147483647i), vec2<i32>(3845i, 2147483647i), vec2<i32>(12667i, i32(-2147483648)), vec2<i32>(-24993i, 2147483647i), vec2<i32>(16407i, 2147483647i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global1.a));
    let var_1 = var_0;
    return var_1.a;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * -1354f)))), _wgslsmith_f_op_f32(f32(-1f) * -447f)));
    global2 = array<vec2<i32>, 22>();
    var var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(34283u, ~0u, _wgslsmith_clamp_u32(4294967295u, 1u, u_input.e) >> (11953u % 32u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 80209u, 24055u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(arg_0, 0u, 1u))));
    var var_1 = func_2();
    let var_2 = Struct_2(arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f))) + global0.x));
}

fn func_1() -> vec4<f32> {
    global1 = func_2();
    let var_0 = u_input.a.x;
    let var_1 = func_2();
    global2 = array<vec2<i32>, 22>();
    var var_2 = 0u;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1282f, 898f, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1053f + global0.x), global0.x, _wgslsmith_f_op_f32(func_3(8255u, var_1, vec2<bool>(true, false))), _wgslsmith_f_op_f32(abs(1288f))))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-674f)) + _wgslsmith_f_op_f32(min(global0.x, global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1f), 1098f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = func_2();
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(310f + 760f), arg_0.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(830f, global0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))), 400f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + 567f))))), -1164f, -1133f);
    let var_2 = ~17369u;
    var var_3 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(264f + -258f)), arg_0.x == var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1()).x - -1000f));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * global0.x), 1116f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1208f, -1000f, -746f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))), Struct_2(func_2())));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-371f, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, -115f))) * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -166f) + vec2<f32>(1727f, global0.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 348f) + vec2<f32>(-581f, 297f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1349f, -596f) - vec2<f32>(-328f, global0.x))))));
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1997f, global0.x)))) < global0.x, false, all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), false)), all(vec4<bool>(true, !all(vec4<bool>(false, false, false, false)), false, any(vec3<bool>(true, true, false)) & true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, _wgslsmith_f_op_f32(select(590f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -262f)), any(!vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x)))), global0.x));
    var_0 = vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, 1382f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-917f, 326f)))))), var_1.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(1i, u_input.b.x), _wgslsmith_dot_vec4_i32(~abs(-u_input.b), vec4<i32>(-_wgslsmith_add_i32(global1.a, 47194i), reverseBits(1i), -2147483647i, -2147483647i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e, 1u, ~u_input.d.x, 4294967295u), vec4<u32>(u_input.e, 1u, ~0u, firstTrailingBit(u_input.d.x)) & _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 105247u, 35326u, u_input.e), vec4<u32>(25886u, 4294967295u, 11566u, u_input.e)), vec4<u32>(1u, 110574u, u_input.e, u_input.d.x))), u_input.c & -global1.a, firstLeadingBit(vec3<i32>(global1.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(1u, 22u)], u_input.b.yx), u_input.b.xx), global1.a)));
}

