struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-1388f), Struct_1(1159f), Struct_1(-1599f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(100f);
    let var_1 = arg_0;
    let var_2 = false;
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(-2133f, 677f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, -1438f, var_0.a, var_0.a)))));
    return 1494f;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global0 = array<Struct_1, 3>();
    var var_0 = ~((~vec4<u32>(32320u, u_input.a, u_input.a, 0u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 29138u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), abs(vec4<u32>(1u, 4294967295u, 79359u, u_input.a)))) ^ vec4<u32>(22702u, abs(_wgslsmith_div_u32(u_input.a, 72863u)), ~_wgslsmith_div_u32(20295u, u_input.a), min(~1u, max(40374u, 1u))));
    let var_1 = global0[_wgslsmith_index_u32(~(1u >> (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 1u, 20438u, 1u), vec4<u32>(var_0.x, u_input.a, 62354u, u_input.a), arg_0.x), vec4<u32>(u_input.a & 1u, firstLeadingBit(u_input.a), var_0.x, var_0.x)) % 32u)), 3u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.wx, Struct_1(_wgslsmith_f_op_f32(var_1.a * -203f))))));
    var_2 = global0[_wgslsmith_index_u32(u_input.a, 3u)];
    return _wgslsmith_f_op_f32(max(-1341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = all(!select(vec4<bool>(all(vec4<bool>(true, false, false, false)), true, true, -36488i > u_input.c), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.xz, arg_0.xy))), arg_0.wx));
    var var_2 = var_0;
    return global0[_wgslsmith_index_u32(max(~(~34154u), u_input.a), 3u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a);
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), var_0.a)))) - _wgslsmith_f_op_f32(-1013f * -861f)), _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + var_0.a) * _wgslsmith_f_op_f32(-394f - 247f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -1805f)) - 135f), var_0.a));
    let var_2 = arg_2.a;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1004f, var_2, arg_2.a, 2503f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-170f, var_1.a, 1276f, var_2))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(772f, 869f, -194f, arg_2.a))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.a, 4294967295u), Struct_1(1006f))), -383f, var_0.a, _wgslsmith_f_op_f32(step(-1000f, var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.a)), 472f, _wgslsmith_f_op_f32(ceil(1225f)), 183f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 166f, 170f, arg_2.a)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-130f, 950f, false)) + arg_3.a), var_2, _wgslsmith_div_f32(var_2, var_0.a), -1613f)));
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1523f, 434f, -815f, var_3.x)))))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, -449f, arg_1.a, arg_1.a))))));
    let var_1 = Struct_1(arg_1.a);
    var var_2 = select(!select(vec4<bool>(true, any(vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true)), true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), -937f >= arg_1.a), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true))), vec4<bool>(!all(vec2<bool>(true, true)), false, true, true), true);
    var_2 = vec4<bool>(!select(!select(true, var_2.x, true), false, var_2.x), true, true, var_2.x);
    var var_3 = func_1(u_input.d.ww, _wgslsmith_dot_vec4_i32(u_input.d, ((vec4<i32>(u_input.c, u_input.e, u_input.d.x, -31391i) ^ vec4<i32>(u_input.e, 0i, 96530i, u_input.b)) >> (vec4<u32>(22224u, 1u, 23961u, arg_0) % vec4<u32>(32u))) ^ (u_input.d >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 66255u, 0u, 1u), vec4<u32>(arg_0, arg_0, 1253u, 11900u)) % vec4<u32>(32u)))), var_1, func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-295f, arg_1.a, 1806f, -1171f) - vec4<f32>(var_0.a, arg_1.a, -1398f, var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 175f, -435f, 433f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1084f, arg_1.a, var_1.a, var_1.a)))))));
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-196f, arg_1.a, arg_1.a, -149f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -109f, -1138f, -887f)))))));
    let var_1 = select(false, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), false);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1862f, arg_0.a) * arg_0.a) - arg_0.a) + _wgslsmith_f_op_f32(arg_0.a - 253f)));
    let var_3 = vec4<bool>(any(!select(select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), true, var_1, all(!(!vec3<bool>(var_1, var_1, var_1))));
    var var_4 = _wgslsmith_add_u32(1u, arg_3.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1358f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(global0[_wgslsmith_index_u32(1u, 3u)], func_5(4294967295u, func_1(vec2<i32>(-6650i, u_input.b), -2062i, Struct_1(-1315f), Struct_1(1451f))), _wgslsmith_sub_vec2_i32(u_input.d.zw, vec2<i32>(u_input.b, u_input.e)), reverseBits(vec2<u32>(0u, 4157u)))) - _wgslsmith_f_op_f32(-1611f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-162f - 1903f) - _wgslsmith_f_op_f32(1279f + 806f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-833f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1951f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1128f, -1032f))))));
    global0 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(63872i, ~u_input.a);
}

