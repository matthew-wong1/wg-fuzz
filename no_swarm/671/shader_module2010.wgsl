struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> bool {
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = all(vec3<bool>(true, func_3(Struct_1(any(vec4<bool>(true, false, false, true)), ~(-44436i), ~vec3<u32>(1u, u_input.b.x, u_input.a.x)), true, Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1079f, 402f, 648f)))), true));
    let var_1 = vec3<bool>(true, !func_3(Struct_1(true, -1i, u_input.a), !(!var_0), Struct_2(false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1315f, -1119f, -948f)))), any(!global0[_wgslsmith_index_u32(~36179u, 22u)]));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1330f, 618f, -1037f) - vec3<f32>(-384f, 380f, 1263f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1734f, -1194f, -447f) - vec3<f32>(-107f, 377f, -577f)))), vec3<f32>(_wgslsmith_div_f32(1203f, -473f), _wgslsmith_f_op_f32(630f * 1168f), _wgslsmith_f_op_f32(select(1047f, -831f, var_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1176f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1164f, 1630f)), _wgslsmith_f_op_f32(1000f - 478f))), 233f)));
    var var_3 = vec4<i32>(abs(~min(1i, 4372i)) >> ((u_input.a.x | 13110u) % 32u), _wgslsmith_div_i32(min(-1i, -11979i), 3316i), ~2147483647i, -20829i);
    var_3 = ~countOneBits(max(select(vec4<i32>(-44437i, 2147483647i, var_3.x, var_3.x) ^ vec4<i32>(var_3.x, -45349i, var_3.x, var_3.x), -vec4<i32>(5365i, -2147483647i, -12770i, var_3.x), select(vec4<bool>(true, true, var_0, var_1.x), vec4<bool>(true, var_0, true, false), var_1.x)), reverseBits(~vec4<i32>(-1i, var_3.x, var_3.x, -11366i))));
    return Struct_1(!func_3(Struct_1(false, -var_3.x, select(vec3<u32>(u_input.b.x, 119u, 76171u), u_input.a, vec3<bool>(true, false, var_0))), all(vec2<bool>(false, false)), Struct_2(all(global0[_wgslsmith_index_u32(u_input.b.x, 22u)]), var_2)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_3.x), 23810i, abs(-44809i), -var_3.x), vec4<i32>(var_3.x, abs(var_3.x), _wgslsmith_div_i32(-2147483647i, var_3.x), var_3.x)), -(~_wgslsmith_add_i32(var_3.x, var_3.x)), true), u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(909f)), -168f, arg_0.a))) > -855f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(159f, 192f, -220f))))))));
    let var_2 = func_2();
    global0 = array<vec2<bool>, 22>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-148f, _wgslsmith_f_op_f32(floor(var_1.b.x)))))))) + 204f);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 22>();
    global0 = array<vec2<bool>, 22>();
    global0 = array<vec2<bool>, 22>();
    let var_0 = any(select(select(!(!global0[_wgslsmith_index_u32(37316u, 22u)]), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(u_input.b.x, 22u)]) && true), vec2<bool>(true, true), !vec2<bool>(func_1(Struct_1(true, 16591i, vec3<u32>(1u, u_input.a.x, u_input.b.x)), -243i, Struct_1(true, 0i, u_input.a), 4294967295u), true)));
    global0 = array<vec2<bool>, 22>();
    let var_1 = func_2();
    var var_2 = countOneBits(var_1.b);
    let var_3 = Struct_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(377f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f - -988f) - -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2021f - 1265f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-758f, 216f, -159f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(381f, 114f, -171f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-645f, u_input.a.xy, countOneBits(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, 1i) << (var_1.c.xx % vec2<u32>(32u)), -vec2<i32>(var_1.b, var_1.b)), i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f), var_3.b.x)) - -305f), -14986i);
}

