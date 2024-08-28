struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(2907u, 4294967295u, 74342u, 2930u), vec4<u32>(23253u, 35935u, 1u, 0u), vec4<u32>(4806u, 56840u, 0u, 4294967295u), vec4<u32>(1u, 27627u, 70186u, 21801u), vec4<u32>(51862u, 1u, 47129u, 1u), vec4<u32>(33274u, 42385u, 44053u, 29530u), vec4<u32>(0u, 1u, 15509u, 1u), vec4<u32>(1u, 28763u, 48021u, 4294967295u), vec4<u32>(29940u, 213u, 0u, 30878u), vec4<u32>(1u, 42693u, 39188u, 49597u), vec4<u32>(4294967295u, 8519u, 76601u, 67838u), vec4<u32>(0u, 4294967295u, 5367u, 39742u));

var<private> global1: array<vec4<i32>, 30>;

var<private> global2: i32;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: vec4<bool>) -> i32 {
    global4 = array<Struct_1, 31>();
    var var_0 = !select(select(vec4<bool>(846f > arg_0.x, all(vec2<bool>(arg_3.x, arg_3.x)), arg_3.x, !global3.a), select(arg_3, select(vec4<bool>(false, false, true, global3.a), vec4<bool>(arg_3.x, false, false, global3.a), arg_3), select(arg_3, arg_3, vec4<bool>(true, global3.a, arg_3.x, global3.a))), vec4<bool>(all(vec3<bool>(arg_3.x, false, true)), global3.a, arg_3.x, false)), arg_3, select(vec4<bool>(all(arg_3.yyw), true, global3.a, 0u < arg_2), vec4<bool>(false, true, global3.a && false, false), any(select(arg_3.wx, vec2<bool>(global3.a, false), false))));
    let var_1 = -1i;
    let var_2 = 1u;
    global2 = var_1;
    return ~((i32(-1i) * -4629i) | max(-5934i << (_wgslsmith_mod_u32(4166u, arg_2) % 32u), -_wgslsmith_mult_i32(var_1, -2147483647i)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: i32) -> vec2<f32> {
    global0 = array<vec4<u32>, 12>();
    var var_0 = vec4<i32>(2147483647i, -reverseBits(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, 1000f, 388f, 590f)), _wgslsmith_f_op_f32(1250f - -347f), arg_1, vec4<bool>(true, true, true, true))), firstTrailingBit(min(min(~arg_2, arg_2 << (62557u % 32u)), u_input.a.x)), _wgslsmith_clamp_i32(~u_input.a.x, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, 1170f, -763f, -2386f)), -421f, ~(~6893u), select(!vec4<bool>(true, true, global3.a, true), select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, false, false), false), select(vec4<bool>(global3.a, false, arg_0, true), vec4<bool>(false, false, false, global3.a), vec4<bool>(true, false, false, true)))), u_input.a.x));
    global2 = -arg_2;
    var var_1 = any(!select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(global3.a, arg_0, global3.a), vec3<bool>(arg_0, true, arg_0))) | arg_0;
    var var_2 = global4[_wgslsmith_index_u32(firstLeadingBit(46577u | ~arg_1), 31u)];
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-626f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-419f + -1000f), _wgslsmith_f_op_f32(-502f - 654f)) * 409f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(110f, -359f)))), vec2<f32>(719f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, -284f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = -vec3<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.a.x, abs(u_input.a.x)), -16122i);
    global1 = array<vec4<i32>, 30>();
    var var_1 = var_0.x;
    global1 = array<vec4<i32>, 30>();
    global4 = array<Struct_1, 31>();
    return _wgslsmith_f_op_vec2_f32(func_2(global3.a, 4294967295u, 2147483647i));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(global3.a);
    global1 = array<vec4<i32>, 30>();
    global3 = Struct_1(any(!(!select(vec3<bool>(var_0.a, arg_1.a, false), vec3<bool>(var_0.a, global3.a, var_0.a), vec3<bool>(global3.a, false, true)))));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(23918i, 2147483647i), u_input.a.x, 82614i) >= -abs(1i));
    global0 = array<vec4<u32>, 12>();
    return StorageBuffer(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(62843u, 44999u, 19827u, 28394u)) >> (max(_wgslsmith_div_u32(89305u, 1u), ~36124u) % 32u), ~firstLeadingBit(47509u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 30>();
    let var_0 = global4[_wgslsmith_index_u32(0u, 31u)];
    let var_1 = Struct_1(global3.a);
    var var_2 = u_input.b.x == -35767i;
    global4 = array<Struct_1, 31>();
    global0 = array<vec4<u32>, 12>();
    global4 = array<Struct_1, 31>();
    var var_3 = var_1.a;
    var_2 = (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-257f - _wgslsmith_f_op_f32(trunc(360f))), 1725f)) >= -1000f) || !(!(u_input.a.x > reverseBits(u_input.a.x)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(359f, -342f) - vec2<f32>(805f, 1001f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2381f, 760f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1225f, 792f), vec2<f32>(-152f, -299f))), _wgslsmith_f_op_vec2_f32(func_1(false, Struct_1(true))), select(vec2<bool>(var_1.a, false), vec2<bool>(true, var_1.a), false))))), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-801f)) + -1308f)))), var_1);
}

