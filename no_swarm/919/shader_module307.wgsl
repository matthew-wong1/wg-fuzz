struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<bool>(true, true, false, false), false, vec3<f32>(-1073f, -130f, -763f)), Struct_1(vec4<bool>(false, false, true, false), true, vec3<f32>(-1347f, -930f, 943f)), Struct_1(vec4<bool>(false, true, false, false), false, vec3<f32>(-605f, -264f, 1528f)), Struct_1(vec4<bool>(false, true, false, true), false, vec3<f32>(394f, -113f, 232f)), Struct_1(vec4<bool>(false, false, true, true), true, vec3<f32>(798f, 1887f, 631f)), Struct_1(vec4<bool>(true, false, false, true), false, vec3<f32>(2097f, 451f, 376f)), Struct_1(vec4<bool>(true, false, false, false), false, vec3<f32>(1056f, -1000f, -671f)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<f32>(-1205f, 1150f, -2392f)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<f32>(-1214f, -823f, -900f)), Struct_1(vec4<bool>(false, true, false, false), true, vec3<f32>(1228f, -730f, 239f)), Struct_1(vec4<bool>(true, true, true, false), false, vec3<f32>(466f, -713f, -1903f)), Struct_1(vec4<bool>(false, true, true, false), true, vec3<f32>(313f, -1006f, -774f)), Struct_1(vec4<bool>(false, true, true, false), true, vec3<f32>(589f, -400f, -1434f)), Struct_1(vec4<bool>(true, true, true, false), true, vec3<f32>(-381f, 1438f, 841f)), Struct_1(vec4<bool>(true, true, false, false), true, vec3<f32>(243f, 1015f, -1845f)), Struct_1(vec4<bool>(true, false, false, false), true, vec3<f32>(426f, 892f, 863f)), Struct_1(vec4<bool>(false, true, false, true), true, vec3<f32>(999f, 464f, 1009f)), Struct_1(vec4<bool>(true, false, false, false), true, vec3<f32>(-846f, -427f, 808f)), Struct_1(vec4<bool>(false, true, true, true), false, vec3<f32>(1067f, -250f, 620f)), Struct_1(vec4<bool>(false, false, false, false), true, vec3<f32>(-1047f, 1274f, 192f)), Struct_1(vec4<bool>(false, true, false, true), true, vec3<f32>(996f, 523f, 1502f)), Struct_1(vec4<bool>(false, true, false, true), true, vec3<f32>(-225f, -1037f, -329f)), Struct_1(vec4<bool>(false, true, true, false), true, vec3<f32>(576f, 1567f, -1603f)), Struct_1(vec4<bool>(false, false, true, true), true, vec3<f32>(727f, 1000f, 1189f)), Struct_1(vec4<bool>(false, false, false, true), true, vec3<f32>(-1051f, -464f, 214f)), Struct_1(vec4<bool>(true, true, true, false), false, vec3<f32>(543f, 310f, 259f)), Struct_1(vec4<bool>(false, false, false, false), true, vec3<f32>(-488f, 1403f, 521f)), Struct_1(vec4<bool>(false, false, false, true), true, vec3<f32>(1313f, -943f, -510f)), Struct_1(vec4<bool>(false, false, false, true), false, vec3<f32>(-684f, -1112f, -446f)), Struct_1(vec4<bool>(false, false, false, false), false, vec3<f32>(1244f, 1141f, -614f)), Struct_1(vec4<bool>(false, false, false, true), false, vec3<f32>(-1000f, 517f, -251f)), Struct_1(vec4<bool>(true, false, true, true), true, vec3<f32>(-1000f, -362f, 522f)));

var<private> global1: bool;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.a), 32u)];
    return vec4<bool>(var_0.a.x, true, false, (-1i < abs(-1i << (u_input.b.x % 32u))) && var_0.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = global0[_wgslsmith_index_u32(arg_1.x, 32u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(~arg_1.x, u_input.b.x << (1u % 32u), countOneBits(1u), ~u_input.a)), ~abs(vec4<u32>(~arg_1.x, arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(18452u, u_input.a, 1u, arg_1.x), vec4<u32>(4294967295u, u_input.a, 0u, 0u)), firstTrailingBit(arg_1.x)))), 32u)];
    var var_2 = ~u_input.b.x;
    return StorageBuffer(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.b.yz << (u_input.b.yx % vec2<u32>(32u)), countOneBits(vec2<u32>(1u, u_input.a)))), vec2<u32>(1u, 0u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.c.x * -768f), -543f, _wgslsmith_f_op_f32(-1241f - arg_0)) * vec3<f32>(_wgslsmith_f_op_f32(-1131f + arg_0), 2127f, _wgslsmith_div_f32(-172f, var_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - var_0.c.x) + _wgslsmith_f_op_f32(arg_0 - var_1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1445f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, var_1.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(vec2<bool>(true, true));
    global0 = array<Struct_1, 32>();
    let var_0 = Struct_1(vec4<bool>(false, all(vec4<bool>(false, false, true, true)), true & ((-31698i < global2.x) & true), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)))), !(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, -526f, 176f))) + vec3<f32>(1000f, -494f, _wgslsmith_div_f32(505f, 488f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(421f, -145f, 1456f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1314f, -1236f, 386f) * vec3<f32>(-350f, -528f, -300f))) - vec3<f32>(-687f, -1095f, _wgslsmith_f_op_f32(round(-431f)))))));
    global1 = 73159i > global2.x;
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = func_2(660f, abs(vec3<u32>(3925u, 1u, 40581u)), Struct_1(select(func_1(_wgslsmith_f_op_f32(-var_0.c.x)), select(!vec4<bool>(var_0.b, var_0.b, true, var_0.b), !vec4<bool>(var_0.b, var_0.a.x, false, false), var_0.a), (var_0.c.x >= var_0.c.x) || true), var_0.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -1000f, var_0.c.x) + vec3<f32>(var_0.c.x, -2450f, var_0.c.x)) - _wgslsmith_f_op_vec3_f32(-var_0.c))));
}

