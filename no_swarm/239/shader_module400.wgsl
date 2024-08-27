struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(63269u, 1845f), Struct_1(4294967295u, -507f), Struct_1(47501u, 1015f), Struct_1(25828u, -340f), Struct_1(0u, -1999f), Struct_1(56103u, 2023f), Struct_1(23173u, 510f), Struct_1(38607u, -1000f), Struct_1(22587u, -370f), Struct_1(1u, 1104f), Struct_1(104928u, -487f), Struct_1(4294967295u, -1094f), Struct_1(40275u, -1000f), Struct_1(0u, 271f), Struct_1(1u, -188f), Struct_1(80431u, 770f), Struct_1(19554u, -1219f));

var<private> global2: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, select(~(~u_input.a.x), ~(~u_input.a.x), global2.a.x)), ~0u);
    global1 = array<Struct_1, 17>();
    let var_1 = 1u;
    let var_2 = arg_3;
    global1 = array<Struct_1, 17>();
    return -863f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global2 = Struct_2(!arg_0.a);
    let var_0 = arg_1;
    var var_1 = vec2<bool>(!(all(vec4<bool>(arg_0.a.x, false, false, true)) && false), arg_1.a.x);
    global1 = array<Struct_1, 17>();
    return !any(!vec3<bool>(var_1.x, true, any(arg_1.a)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(1564f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1053f)) * _wgslsmith_f_op_f32(261f * 705f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(417f, 457f)) - _wgslsmith_f_op_f32(step(632f, _wgslsmith_f_op_f32(f32(-1f) * -1490f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-141f, _wgslsmith_f_op_f32(f32(-1f) * -367f), true)), 374f)));
    global2 = arg_0;
    global2 = Struct_2(vec3<bool>(any(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, arg_0.a.x, any(vec2<bool>(true, global2.a.x)))), !all(select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, false), vec4<bool>(true, global2.a.x, arg_0.a.x, global2.a.x), true)), arg_0.a.x));
    var var_1 = arg_0;
    let var_2 = arg_0.a.xx;
    return ~(~(~u_input.b));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = 1u ^ firstTrailingBit(u_input.b);
    var var_1 = global1[_wgslsmith_index_u32(var_0 | func_4(Struct_2(vec3<bool>(func_3(Struct_2(vec3<bool>(global2.a.x, false, global2.a.x)), Struct_2(vec3<bool>(global2.a.x, true, global2.a.x))), any(vec2<bool>(global2.a.x, global2.a.x)), func_3(Struct_2(vec3<bool>(false, false, global2.a.x)), Struct_2(vec3<bool>(false, false, global2.a.x))))), -_wgslsmith_mod_i32(-arg_0.x, max(-32221i, -2147483647i))), 17u)];
    var var_2 = countOneBits(u_input.a);
    var_1 = Struct_1(10619u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_i32(28825i, arg_0.x), !vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), 1f, Struct_2(vec3<bool>(true, global2.a.x, global2.a.x)))))), var_1.b)));
    let var_3 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(i32(-1i) * -12613i, arg_0.x), ~2599i);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b - var_1.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(i32(-1i) * -1i, select(vec4<bool>(global2.a.x, global2.a.x, false, false), vec4<bool>(true, true, global2.a.x, true), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), _wgslsmith_f_op_f32(var_1.b - var_1.b), Struct_2(vec3<bool>(global2.a.x, true, false)))) * 1316f))));
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    global2 = Struct_2(vec3<bool>(true, true, true));
    let var_0 = Struct_2(vec3<bool>(global2.a.x, 1000f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -796f) * _wgslsmith_f_op_f32(-arg_2.b)), true));
    var var_1 = !vec2<bool>(var_0.a.x, !any(vec3<bool>(true, true, true)));
    let var_2 = Struct_2(select(vec3<bool>(func_3(Struct_2(var_0.a), Struct_2(vec3<bool>(true, arg_0, var_0.a.x))), all(select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, var_0.a.x, false, true), var_0.a.x)), var_1.x), var_0.a, select(arg_0, false, true)));
    global1 = array<Struct_1, 17>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-877f, arg_2.b)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(select(select(global2.a, vec3<bool>(true, false || global2.a.x, true), global2.a.x), global2.a, vec3<bool>(any(global2.a.xx) | false, global2.a.x, !(!global2.a.x))));
    global2 = Struct_2(!vec3<bool>(false, select(u_input.a.x, 1u, true) <= 0u, global2.a.x));
    let var_0 = _wgslsmith_f_op_f32(func_5(true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(385f - -2842f) * _wgslsmith_f_op_f32(f32(-1f) * -839f))), _wgslsmith_f_op_f32(f32(-1f) * -1217f)), Struct_1(16105u ^ u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1i, vec4<bool>(true, global2.a.x, true, true), 1000f, Struct_2(vec3<bool>(global2.a.x, global2.a.x, global2.a.x)))) - _wgslsmith_f_op_f32(-1149f - _wgslsmith_f_op_f32(func_2(vec4<i32>(1i, -15534i, -30771i, -1i))))))));
    global0 = 1169f;
    var var_1 = ~(~_wgslsmith_sub_vec2_i32(min(vec2<i32>(-1i, 2147483647i), vec2<i32>(97652i, -14659i)), vec2<i32>(-6917i, 6239i))) & reverseBits(abs(-vec2<i32>(26849i, -2552i)) | (select(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(1i, -2147483647i), global2.a.zx) >> (min(vec2<u32>(0u, 22708u), vec2<u32>(u_input.a.x, 29439u)) % vec2<u32>(32u))));
    global0 = var_0;
    let var_2 = vec4<bool>(any(global2.a.zz), global2.a.x, global2.a.x, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1020f - -791f) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(511f, var_0), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(530f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(775f, -315f, var_0))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) - vec3<f32>(var_0, 1294f, var_0)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(546f, -898f, 490f))), vec3<f32>(var_0, _wgslsmith_div_f32(var_0, -814f), var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_3.yx))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3.x, -431f), vec2<f32>(var_0, var_0))))), 1i);
}

