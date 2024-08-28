struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: array<i32, 31>;

var<private> global1: array<bool, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(~u_input.e.x | ~arg_0.e, 2u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-433f - -775f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(581f, -783f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1057f)), _wgslsmith_f_op_f32(f32(-1f) * -2647f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1500f, 214f) + 836f)), -494f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -853f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1892f, 294f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, 879f, 188f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1513f, -953f, 1523f))))))));
    global0 = array<i32, 31>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(285f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(443f - var_1.x))))) + _wgslsmith_div_f32(-954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(var_1.x))))));
    var var_3 = select(vec2<bool>(all(vec4<bool>(u_input.e.x >= 4294967295u, true, true, true)), arg_0.a.x), vec2<bool>(true, true), arg_0.a.xx);
    return select(vec3<bool>(false, all(arg_1), false), arg_0.a, any(arg_0.a.xy));
}

fn func_2() -> i32 {
    var var_0 = u_input.e;
    var var_1 = !(!func_3(Struct_2(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(6361u, 2u)]), u_input.c, ~(-1i), 2147483647i, _wgslsmith_dot_vec3_u32(vec3<u32>(104102u, 0u, u_input.e.x), vec3<u32>(var_0.x, var_0.x, u_input.e.x))), !(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)]))));
    var var_2 = Struct_4(~firstTrailingBit(1u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - 955f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1223f, 809f)) + -1691f), -476f))), select(vec4<bool>(var_1.x, true, 1446u == select(1u, u_input.e.x, var_1.x), any(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 2u)], false))), select(select(!vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(var_0.x, 2u)], false, global1[_wgslsmith_index_u32(u_input.a, 2u)]), !vec4<bool>(true, var_1.x, true, true), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], var_1.x), vec4<bool>(false, var_1.x, global1[_wgslsmith_index_u32(54757u, 2u)], false))), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 2u)], true), vec4<bool>(global1[_wgslsmith_index_u32(22099u, 2u)], true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, global1[_wgslsmith_index_u32(var_0.x, 2u)])), !vec4<bool>(var_1.x, true, global1[_wgslsmith_index_u32(4294967295u, 2u)], var_1.x), !global1[_wgslsmith_index_u32(var_0.x, 2u)]), select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], true, false), global1[_wgslsmith_index_u32(var_0.x, 2u)]), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(false, true, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x)), !vec4<bool>(false, false, var_1.x, global1[_wgslsmith_index_u32(u_input.a, 2u)]))), !select(!vec4<bool>(var_1.x, false, global1[_wgslsmith_index_u32(var_0.x, 2u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(54585u, 2u)], global1[_wgslsmith_index_u32(var_0.x, 2u)], var_1.x, global1[_wgslsmith_index_u32(var_0.x, 2u)]), var_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(678f, _wgslsmith_f_op_f32(min(960f, _wgslsmith_f_op_f32(sign(-351f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1459f + 1593f), _wgslsmith_f_op_f32(1297f - -104f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f)), -559f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(func_3(Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 2u)], var_1.x, true), vec3<i32>(-22284i, u_input.c.x, -8132i), u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 31u)], var_0.x), var_1.zx), vec3<bool>(true, select(true, global1[_wgslsmith_index_u32(0u, 2u)], var_1.x), global1[_wgslsmith_index_u32(27240u, 2u)]), select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.x, 2u)]), global1[_wgslsmith_index_u32(28690u, 2u)]), !vec3<bool>(true, var_1.x, false), !vec3<bool>(true, false, var_1.x))))));
    let var_3 = vec3<f32>(-507f, _wgslsmith_f_op_f32(round(var_2.d.x)), var_2.d.x);
    var_2 = Struct_4(abs(~u_input.a), var_3, select(!vec4<bool>(func_3(Struct_2(vec3<bool>(false, var_2.c.x, false), vec3<i32>(18069i, global0[_wgslsmith_index_u32(var_0.x, 31u)], 2147483647i), -8350i, -1i, 1u), var_2.c.yx).x, false, true, global1[_wgslsmith_index_u32(var_2.a, 2u)] || global1[_wgslsmith_index_u32(var_0.x, 2u)]), var_2.c, !vec4<bool>(any(var_2.c.ywx), any(vec4<bool>(var_2.c.x, true, global1[_wgslsmith_index_u32(var_0.x, 2u)], false)), var_1.x, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, var_3.x, var_2.d.x), var_2.d))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1602f, var_3.x, var_2.d.x))), var_3), var_2.c.xwx)));
    return global0[_wgslsmith_index_u32(0u, 31u)];
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<i32>) -> StorageBuffer {
    var var_0 = select(!(!vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, 114345u), 2u)], all(vec3<bool>(arg_1, false, false)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, u_input.a, 5424u), u_input.e), 2u)])), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, 6638u), 2u)], global1[_wgslsmith_index_u32(~u_input.a, 2u)], true), !(any(vec3<bool>(true, false, true)) & any(vec3<bool>(arg_1, true, arg_1))));
    let var_1 = Struct_1(!(var_0.x || arg_1));
    let var_2 = firstLeadingBit(vec4<i32>(~2147483647i ^ func_2(), ~global0[_wgslsmith_index_u32(min(u_input.e.x, select(u_input.a, u_input.a, false)), 31u)], 1i, ~reverseBits(u_input.c.x)));
    global0 = array<i32, 31>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-737f))), -897f)));
    return StorageBuffer(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a | _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.e.yzy, u_input.e.www), u_input.e.zzx));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = func_1(1172i, any(vec2<bool>(any(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(0u, 2u)] == global1[_wgslsmith_index_u32(u_input.a, 2u)])), abs(firstTrailingBit(-vec4<i32>(u_input.d, 2147483647i, 46407i, -2147483647i))) | vec4<i32>(~2147483647i, ~global0[_wgslsmith_index_u32(0u, 31u)] | -35243i, 1i | -u_input.d, i32(-1i) * -25109i));
}

