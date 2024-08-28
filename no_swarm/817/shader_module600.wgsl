struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, i32(-2147483648), -30253i, 19963i);

var<private> global1: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(500f, -1454f, -317f)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1799f, -1439f, 137f), vec3<f32>(947f, -1000f, 297f)) + vec3<f32>(2174f, 1649f, 880f)), vec3<f32>(_wgslsmith_f_op_f32(min(-581f, 638f)), _wgslsmith_f_op_f32(step(423f, 440f)), -1000f)))), _wgslsmith_f_op_f32(floor(1f)), u_input.a.x);
    global1 = 1u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.b, var_0.b)), 1904f, _wgslsmith_clamp_u32(abs(u_input.a.x), abs(arg_1.x), ~4294967295u));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-328f, -1554f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1073f, _wgslsmith_f_op_f32(f32(-1f) * -3046f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 1832f))), var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-421f)))) * -1000f), 1u);
    var var_3 = vec2<bool>(false, _wgslsmith_clamp_i32(u_input.b.x & u_input.b.x, abs(firstTrailingBit(-16590i)), arg_0.x) >= reverseBits(abs(arg_0.x) << (_wgslsmith_sub_u32(23017u, var_2.c) % 32u)));
    return -483f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> vec3<u32> {
    global0 = -u_input.b;
    let var_0 = true;
    let var_1 = ~vec3<u32>(~(~max(u_input.a.x, 94009u)), select(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, true), 1u);
    let var_2 = true;
    var var_3 = Struct_1(arg_1.yzx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) + _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(809f - 136f)))), u_input.a.x);
    return var_1;
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.yy;
    var_0 = u_input.a.xy | u_input.a.xy;
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a, u_input.a), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(1i, -2147483647i, 2147483647i, -20406i), vec4<u32>(1u, u_input.a.x, 5164u, 1u))) * _wgslsmith_f_op_f32(1624f * 343f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1089f, 2583f, 270f, -833f), vec4<f32>(1000f, 823f, -395f, 104f))))))) ^ u_input.a;
    let var_2 = global0.x;
    global0 = vec4<i32>(~(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-21084i, 1i, global0.x)), vec3<i32>(u_input.b.x, u_input.b.x, global0.x) ^ global0.www)), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-5794i), -15439i, select(3204i, global0.x, false)), _wgslsmith_sub_i32(0i, -1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(global0.x, -1088i))), countOneBits(-30127i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1739f, -1260f, 364f), vec3<f32>(171f, -727f, -951f)))), vec3<f32>(_wgslsmith_div_f32(370f, 283f), 150f, -1045f))), -317f, u_input.a.x);
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 8573u, 59523u), min(vec3<u32>(10234u, 0u, 1u), u_input.a)), var_0.c) >= 0u;
    var_1 = !any(vec4<bool>(true, false, _wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(-var_0.a.x), select(true, true, true)));
    global0 = vec4<i32>(u_input.b.x, ~global0.x, countOneBits(reverseBits(1i)), global0.x);
    var_1 = !(var_0.c < abs(func_4(874f, vec4<f32>(var_0.a.x, var_0.b, var_0.a.x, 882f)).x ^ func_4(var_0.b, vec4<f32>(var_0.b, var_0.a.x, var_0.b, var_0.b)).x));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(min(u_input.a.x, u_input.a.x) > u_input.a.x, false, select(true, any(vec4<bool>(true, false, true, false)), all(vec3<bool>(false, false, false))), true));
    var var_1 = global0.xx;
    var var_2 = max(vec4<u32>(1u, _wgslsmith_sub_u32(u_input.a.x & 57418u, 1065u), 76860u, u_input.a.x), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 5914u, 0u, 35261u) % vec4<u32>(32u)), min(vec4<u32>(4294967295u, 16593u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x))))) | countOneBits(vec4<u32>(~(~u_input.a.x), func_1() << ((u_input.a.x ^ u_input.a.x) % 32u), u_input.a.x, 1u));
    global1 = 0u;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-604f - -210f), -366f, -1000f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 937f, 2608f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), 1000f), _wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(~var_2.zxw, u_input.a)), ~(~u_input.a.x)));
    let var_4 = Struct_1(var_3.a, _wgslsmith_f_op_f32(-func_2().b), 1u);
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(-66796i);
}

