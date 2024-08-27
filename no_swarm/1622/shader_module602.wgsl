struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec3<f32>(-429f, -416f, 1000f), Struct_1(vec4<i32>(-63092i, 59673i, 0i, i32(-2147483648)), vec3<f32>(359f, -941f, 320f), vec3<f32>(-414f, 560f, 1164f), 2147483647i, 83732u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 9>();
    var var_0 = select(!vec4<bool>(!(u_input.a != u_input.a), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), true), select(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), all(vec3<bool>(true, false, true)), any(vec4<bool>(false, false, true, false))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(vec2<bool>(false, true))), (arg_0.b.d <= 82995i) | true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), 978f < global1.a.a.x), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))), 254f < _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) - 1740f))));
    var_0 = !select(!select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, var_0.x, true, var_0.x)), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), false), false), vec4<bool>(var_0.x, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, any(vec4<bool>(var_0.x, true, false, true)) && !var_0.x), !vec4<bool>(all(vec4<bool>(var_0.x, false, var_0.x, true)), any(vec2<bool>(var_0.x, true)), var_0.x, true));
    let var_1 = var_0.x;
    global1 = Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, global1.a.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1594f, 604f, global1.a.b.b.x)) * _wgslsmith_f_op_vec3_f32(select(arg_0.a, vec3<f32>(-495f, -293f, -1404f), var_0.x)))), arg_0.b));
    return 0u;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f + -762f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = true;
    var_1 = false;
    var_1 = _wgslsmith_clamp_u32(func_3(global1.a), global1.a.b.e, 52193u) >= u_input.b.x;
    global0 = array<vec2<f32>, 9>();
    return Struct_4(Struct_2(vec3<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(var_0, 587f)), var_0, _wgslsmith_f_op_f32(exp2(arg_0))), Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global1.a.b.d, -4122i, global1.a.b.d), vec4<i32>(5572i, -8899i, global1.a.b.a.x, u_input.c)), global1.a.b.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-990f, -992f, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 603f, 1705f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(391f, 2501f, -207f), global1.a.a)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1731f, -462f, 712f), vec3<f32>(322f, arg_0, 1085f)))), ~u_input.d.x, 1u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    global0 = array<vec2<f32>, 9>();
    return _wgslsmith_f_op_f32(trunc(542f));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    global1 = func_2(196f, -160f);
    return global1.a.b;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    var var_0 = func_5(vec2<f32>(-1224f, _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(floor(global1.a.b.c.x)), global1.a.a.x), Struct_4(global1.a)))));
    var var_1 = Struct_3(false);
    var var_2 = _wgslsmith_sub_i32(-u_input.a, 0i);
    global0 = array<vec2<f32>, 9>();
    let var_3 = !var_1.a;
    return !select(vec3<bool>(var_3, true, all(!vec3<bool>(true, var_3, false))), select(vec3<bool>(var_1.a || true, true, true), vec3<bool>(true, !var_3, global1.a.b.e >= 92205u), vec3<bool>(arg_0 <= 4294967295u, 1u >= global1.a.b.e, false & var_1.a)), !vec3<bool>(true, 1604f == global1.a.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(global1.a.a)), Struct_1(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, -1i), firstLeadingBit(1i), -_wgslsmith_mod_i32(-26330i, u_input.c), -163i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.a.x, -287f, global1.a.b.c.x))))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(460f)), global1.a.a.x, 146f)), vec3<f32>(global1.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f)), -143f), _wgslsmith_sub_i32(u_input.d.x, -global1.a.b.a.x), 1u));
    let var_1 = ~var_0.b.a.x;
    var var_2 = countOneBits(u_input.b);
    let var_3 = select(u_input.b, u_input.b, select(!select(func_1(4294967295u), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), true), vec3<bool>(false, false, !(global1.a.b.e >= 4294967295u)), true));
    var var_4 = Struct_3(any(vec4<bool>(true, true, ~1360u >= func_2(-727f, global1.a.a.x).a.b.e, false)));
    let var_5 = func_1(global1.a.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, 1579f, var_0.a.x, global1.a.b.b.x)))))), var_0.b.e, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.b.x - var_0.b.c.x), var_0.b.c.x), _wgslsmith_f_op_f32(abs(var_0.b.b.x)), _wgslsmith_div_f32(-837f, var_0.a.x), global1.a.b.b.x))));
}

