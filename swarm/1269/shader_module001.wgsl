struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<i32>(0i, 0i, i32(-2147483648))), Struct_1(vec3<i32>(1i, 40728i, i32(-2147483648))), Struct_1(vec3<i32>(2147483647i, -26857i, -1i)), Struct_1(vec3<i32>(-56549i, -1285i, i32(-2147483648))));

var<private> global1: vec4<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32((arg_0.x << (~(~u_input.b.x) % 32u)) << (~(_wgslsmith_sub_u32(u_input.c, 4294967295u) ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, u_input.c), 0u)) % 32u), 4u)];
    let var_1 = abs(vec4<i32>(-8423i, ~(-(u_input.a.x & u_input.a.x)), _wgslsmith_add_i32(-(u_input.a.x | 1i), 0i), u_input.a.x));
    global0 = array<Struct_1, 4>();
    var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 11741u, firstLeadingBit(~firstLeadingBit(121130u)))), 4u)];
    global0 = array<Struct_1, 4>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(step(644f, 108f)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 4u)];
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_div_f32(-513f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x))))) <= _wgslsmith_f_op_f32(func_3(u_input.b.zx));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c | ~0u, arg_0), 4u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 1343f);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> vec4<f32> {
    global0 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1121f, _wgslsmith_f_op_f32(func_2(1u, vec4<bool>(true, false, arg_1.x, arg_1.x))), global1.x, 256f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, 329f, global1.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -158f, global1.x)))))));
    let var_1 = any(arg_1.xy);
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(-vec3<i32>(min(arg_2.x, arg_2.x | -4014i), ~u_input.a.x & u_input.a.x, abs(select(0i, -31200i, true))));
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<u32>(~arg_3.x, _wgslsmith_sub_u32(arg_3.x, 15659u)))))), var_0.x, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1949f))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(1101f + global1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-962f * var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.b.x, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), u_input.a.zz, ~vec2<u32>(986u, 101088u)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1097f, global1.x, 2198f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 161f, -223f) - vec4<f32>(-1082f, 862f, global1.x, -137f)) - vec4<f32>(global1.x, 1171f, global1.x, global1.x)) - vec4<f32>(1431f, global1.x, global1.x, global1.x)), vec4<bool>((11895i > u_input.a.x) && true, select(false, true, true), false, true & select(true, true, false)))));
    let var_0 = Struct_1(u_input.a | _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(-1955i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, -47994i))));
    let var_1 = Struct_1(-_wgslsmith_div_vec3_i32((u_input.a | var_0.a) ^ u_input.a, firstTrailingBit(vec3<i32>(var_0.a.x, -2147483647i, -1i))));
    global0 = array<Struct_1, 4>();
    let var_2 = select(vec2<bool>(select(true, false, true), 25038u < u_input.c), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<bool>(-81771i > var_1.a.x, true), false), all(vec2<bool>(true, true)) || any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true))), vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true)) | false));
    let var_3 = var_0;
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, 549f, false)))) + global1.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-704f + -338f), -427f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(trunc(global1.x)))), ~(~firstTrailingBit(vec2<u32>(16628u, u_input.b.x))));
}

