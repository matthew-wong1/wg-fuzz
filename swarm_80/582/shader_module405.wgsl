struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, 900f, -283f, -281f));

var<private> global2: array<i32, 20>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    let var_0 = ~(vec4<u32>(~min(2890u, u_input.b), ~u_input.a.x, _wgslsmith_dot_vec4_u32(max(u_input.a, vec4<u32>(1u, 31829u, 4294967295u, u_input.b)), ~u_input.a), 1u) << (_wgslsmith_mod_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 19042u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.a.x, 83393u))), ~u_input.a) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-673f, arg_1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.x * arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f) + _wgslsmith_f_op_f32(-arg_3.x)))));
    let var_2 = arg_2;
    return ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 81981u, var_0.x, u_input.a.x), vec4<u32>(19898u, var_0.x, var_0.x, 4294967295u)))) << (var_0.x % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a));
    let var_1 = vec4<u32>(19693u, abs(func_3(var_0, arg_0, Struct_1(vec4<f32>(-178f, 451f, -743f, arg_0.a.x)), arg_0.a.yx)), firstTrailingBit(55671u), 2997u);
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(541f)), _wgslsmith_f_op_f32(1281f - 276f))), !arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-333f, _wgslsmith_f_op_f32(sign(951f))))), -1073f, _wgslsmith_f_op_f32(var_0.a.x - -720f)));
    var var_2 = vec2<u32>(max(4294967295u, firstLeadingBit(68578u)), arg_2.x);
    var_2 = ~vec2<u32>(u_input.a.x, ~max(countOneBits(var_2.x), ~u_input.b));
    return vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(arg_2.x, 20u)], i32(-1i) * -(~global2[_wgslsmith_index_u32(0u, 20u)])) ^ -vec3<i32>(u_input.c, -33680i, -1i);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(439f, global1.a.x, false))), all(vec2<bool>(true, true))))));
    var var_1 = vec4<i32>(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(~1u, 0u)), 20u)], -28573i, ~global2[_wgslsmith_index_u32(~40541u & _wgslsmith_mod_u32(u_input.a.x, 39548u), 20u)], firstLeadingBit(1i));
    var_1 = vec4<i32>(max(var_1.x, _wgslsmith_mult_i32(~var_1.x, -2147483647i)), ~(var_1.x & -max(-19466i, -1i)), global2[_wgslsmith_index_u32(select(~min(_wgslsmith_sub_u32(57346u, 48084u), _wgslsmith_dot_vec4_u32(vec4<u32>(48289u, u_input.b, 0u, 0u), u_input.a)), ~u_input.a.x, true), 20u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~var_1.xwy, func_2(Struct_1(vec4<f32>(var_0, global1.a.x, var_0, var_0)), true, u_input.a.wz)) >> (30396u % 32u), 56619i));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(472f + -974f), _wgslsmith_f_op_f32(global1.a.x - global1.a.x))) + _wgslsmith_f_op_f32(step(-1128f, -1127f))), -783f, -1392f, global1.a.x));
    global0 = _wgslsmith_f_op_f32(floor(1000f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1726f) - 1376f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - -1850f))), _wgslsmith_f_op_f32(func_1()));
    var var_1 = select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(false, true)) & true, false), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false)), false), !select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)));
    global1 = Struct_1(_wgslsmith_div_vec4_f32(global1.a, global1.a));
    let var_2 = !select(!select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), true), var_1.x), select(!select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), false), vec3<bool>(var_1.x, -45109i <= u_input.c, var_1.x), false), var_1.x);
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(1000f + var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.x + -405f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-298f - global1.a.x), global1.a.x, false))), vec2<f32>(-536f, 789f)), ~u_input.a.wx, vec3<u32>(~(~u_input.a.x), u_input.a.x, 26249u));
}

