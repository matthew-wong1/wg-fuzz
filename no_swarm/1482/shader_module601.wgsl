struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(1u)), Struct_2(Struct_1(4294967295u)), Struct_2(Struct_1(0u)), Struct_2(Struct_1(0u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1630f, -898f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-489f, 135f)))), vec2<f32>(_wgslsmith_f_op_f32(-708f - -243f), -203f), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)))))));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_0 = ~0u;
    var var_1 = arg_0.a;
    let var_2 = !func_3(arg_0.a);
    return arg_0.a;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = 1u;
    global0 = array<Struct_2, 4>();
    let var_1 = arg_3;
    var var_2 = global0[_wgslsmith_index_u32(1u, 4u)];
    global0 = array<Struct_2, 4>();
    return ~2147483647i;
}

fn func_1() -> f32 {
    var var_0 = ~u_input.a.x;
    let var_1 = ~vec4<i32>(1858i, -func_4(vec4<f32>(870f, 1000f, 1095f, -570f), -2080f, func_2(Struct_2(Struct_1(47595u)), vec3<i32>(18090i, u_input.a.x, u_input.a.x), vec3<u32>(u_input.b, u_input.b, u_input.b)), -1314f), u_input.a.x, u_input.a.x);
    var_0 = var_1.x >> (~47180u % 32u);
    let var_2 = Struct_2(func_2(Struct_2(func_2(global0[_wgslsmith_index_u32(~19549u, 4u)], vec3<i32>(-11318i, var_1.x, -23922i), vec3<u32>(4294967295u, u_input.b, 0u))), countOneBits(-(vec3<i32>(39398i, -30488i, var_1.x) << (vec3<u32>(u_input.b, 754u, u_input.b) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), select(u_input.b, u_input.b, true) & 75841u, 20958u)));
    let var_3 = vec4<bool>(false, !(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1006f, 800f)) - _wgslsmith_f_op_f32(step(-1148f, 857f))))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), select(false, false, false) & false)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f) - _wgslsmith_f_op_f32(-378f * -272f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1472f)))))), 922f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1581f, -616f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)));
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, false, false)) | true, ~47762u != u_input.b), !vec3<bool>(true, -1i < u_input.a.x, true)), select(select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !vec3<bool>(all(vec3<bool>(true, false, false)), true, false), vec3<bool>(false, false, any(vec3<bool>(false, true, false)) & all(vec3<bool>(false, true, false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), false, true), true || (u_input.a.x == -51626i)), vec3<bool>(!(var_1.x == 435f), any(vec2<bool>(true, true)), false), any(vec4<bool>(true, true, any(vec2<bool>(true, false)), false))));
    var_0 = -_wgslsmith_mult_i32(max(0i, 1i), -27781i);
    global0 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xz, _wgslsmith_f_op_f32(exp2(var_1.x)));
}

