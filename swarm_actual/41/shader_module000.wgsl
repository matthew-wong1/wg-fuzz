struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(559f, -274f, 598f, 133f, 1009f, -1000f, 1137f, -449f, -198f, -549f, 407f, -1656f, 1000f, 1563f, 918f, -843f, -321f, 1000f, -446f, -482f, -1076f, -1004f, 847f, -221f, 1533f, -157f, 573f, -2811f, -2954f);

var<private> global1: vec2<f32> = vec2<f32>(418f, 237f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> f32 {
    global1 = arg_0.e.zx;
    let var_0 = vec4<i32>(arg_1.x, i32(-1i) * -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, arg_1.x), u_input.d.zz) ^ 22046i), 0i, firstLeadingBit(_wgslsmith_sub_i32(min(-1i, 2147483647i), arg_1.x) | 6769i));
    return global1.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<bool>) -> vec2<u32> {
    var var_0 = Struct_3(global1.x, Struct_2(Struct_1(firstTrailingBit(countOneBits(4294967295u)), false, !(!arg_1.a.x)), vec2<bool>(true, arg_1.a.x), vec4<bool>(any(!arg_2.xx), false, arg_0.x, arg_2.x), -982f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 250f, 1545f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(46836u, 29u)], global1.x, global1.x)))))), 26457i, u_input.a.x, _wgslsmith_f_op_f32(-global1.x));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1011f, var_0.a) * vec2<f32>(1000f, -1520f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -404f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-738f, -1000f)) - var_0.b.e.wx))));
    var_0 = Struct_3(var_0.b.e.x, var_0.b, -53111i, _wgslsmith_sub_u32(u_input.a.x, ~u_input.c << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 29u)] - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = var_0.b.e.zw;
    let var_1 = Struct_2(Struct_1(~9486u, false, ~var_0.b.a.a != abs(4294967295u)), !arg_1.a.xz, !(!select(select(vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0, false), !arg_0, arg_0)), _wgslsmith_f_op_f32(-145f * var_0.e), vec4<f32>(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e * global1.x))), _wgslsmith_f_op_f32(ceil(474f)), -1017f, _wgslsmith_f_op_f32(var_0.e - global0[_wgslsmith_index_u32(64986u, 29u)])));
    return firstTrailingBit(~abs(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d, 0u), vec2<u32>(0u, 0u))));
}

fn func_2() -> vec2<f32> {
    var var_0 = vec4<bool>(false, _wgslsmith_dot_vec2_u32(~func_3(vec4<bool>(true, true, false, false), Struct_4(vec3<bool>(false, true, true)), vec3<bool>(false, false, true)), _wgslsmith_mod_vec2_u32(u_input.a.xw & u_input.b.yz, ~vec2<u32>(0u, 0u))) == u_input.a.x, !all(vec3<bool>(true, true, true)), any(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, u_input.a.x > u_input.c), false)));
    var var_1 = -32429i;
    var_1 = _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_add_i32(34173i, 0i));
    var var_2 = !select(vec4<bool>(all(vec2<bool>(true, true)), false, -816f < _wgslsmith_f_op_f32(-global1.x), true || (global0[_wgslsmith_index_u32(1u, 29u)] <= global1.x)), vec4<bool>(true, !(!var_0.x), var_0.x, var_0.x), select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, true, true, var_0.x)), select(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, true)), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !(!vec4<bool>(var_0.x, false, true, true))));
    var var_3 = u_input.d.x;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f) + _wgslsmith_f_op_f32(trunc(341f))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1717f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]) - vec2<f32>(1047f, global1.x))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(2393u, 29u)], _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(36415u, true, true), vec2<bool>(true, false), vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(0u, 29u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(u_input.c, 29u)], global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), vec4<i32>(2147483647i, -22952i, u_input.d.x, u_input.d.x), Struct_2(Struct_1(u_input.b.x, false, false), vec2<bool>(false, true), vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(4294967295u, 29u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global1.x, global1.x)))))) * _wgslsmith_f_op_vec2_f32(func_2())));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]) * _wgslsmith_f_op_f32(-363f + global0[_wgslsmith_index_u32(1181u, 29u)]))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, 1285f)))))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, -1292f, -816f, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])))) * vec4<f32>(_wgslsmith_f_op_f32(round(-1172f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(67125u, 29u)], -393f)), _wgslsmith_f_op_f32(trunc(global1.x))))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global0[_wgslsmith_index_u32(0u, 29u)]), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(185f, 1399f, -777f, 677f), vec4<f32>(-1373f, global0[_wgslsmith_index_u32(26774u, 29u)], 800f, global0[_wgslsmith_index_u32(11680u, 29u)]), true))))));
    let var_1 = Struct_4(vec3<bool>(true, true, false));
    var var_2 = !all(vec3<bool>(var_1.a.x, var_1.a.x || var_1.a.x, true));
    var_2 = true;
    let var_3 = u_input.d.x;
    var var_4 = Struct_1(0u, any(!select(vec4<bool>(false, false, true, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(var_1.a.x, false, true, false), vec4<bool>(true, true, false, var_1.a.x), vec4<bool>(true, false, var_1.a.x, var_1.a.x)))), true);
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(max(vec4<i32>(~u_input.e, 0i, 0i, reverseBits(var_3)), vec4<i32>(1i, var_3, u_input.e, 26597i))));
}

