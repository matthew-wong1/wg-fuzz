struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), vec3<f32>(284f, arg_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)))), arg_1.c >> (arg_1.c % 32u), arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(arg_1.b.x, var_0.a))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.x))), 499f)));
    var_0 = Struct_1(-566f, vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-var_0.a), 110f), countOneBits(arg_1.c) << (~16615u % 32u), !(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), arg_1.d))), _wgslsmith_f_op_f32(floor(arg_1.e)));
    var var_2 = var_1.b.zx;
    var_0 = arg_1;
    return arg_1.e;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 559f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(16663u, Struct_1(arg_0.x, arg_0, 102399u, true, arg_0.x))) * _wgslsmith_f_op_f32(min(arg_0.x, 1012f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x))), ~u_input.d, !select(false, false, true), _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = arg_1;
    let var_2 = -select(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, -10038i, u_input.c)), -9073i), vec3<i32>(~u_input.c, 1i, ~0i), !(u_input.e == 4294967295u)) & ~(-((vec3<i32>(u_input.b.x, u_input.c, -1i) << (vec3<u32>(arg_1.c, 1u, 14890u) % vec3<u32>(32u))) ^ (vec3<i32>(1i, u_input.b.x, u_input.b.x) ^ vec3<i32>(u_input.b.x, u_input.b.x, u_input.c))));
    let var_3 = arg_0.zwz;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2464f, arg_1.b.x, -597f, var_1.b.x))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1246f, arg_1.a, 722f, var_1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1028f), var_0.x, _wgslsmith_div_f32(619f, 488f), _wgslsmith_f_op_f32(step(-641f, -435f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1743f, arg_1.b.x, var_1.b.x, var_1.b.x) * vec4<f32>(-1983f, var_0.x, arg_1.e, 116f))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(666f)), _wgslsmith_f_op_f32(ceil(-183f))))), arg_1.d & ((any(vec4<bool>(true, true, false, true)) | !var_1.d) && all(vec2<bool>(arg_1.d, arg_1.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -319f) + _wgslsmith_f_op_f32(f32(-1f) * -947f)), -363f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1036f, 754f, 851f) - vec3<f32>(175f, 1000f, 1375f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(146f, -395f, 1770f), vec3<f32>(429f, 1221f, 799f), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-356f, 1220f, -589f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(946f, -167f, -687f) * vec3<f32>(-1043f, -545f, -193f)), false)), true)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(184f, -501f, -233f) * vec3<f32>(1694f, 1440f, -2024f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1941f, -1091f, -578f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 1295f, 512f))))), abs(34595u), true, _wgslsmith_f_op_f32(f32(-1f) * -377f));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_vec3_f32(var_1.b, var_1.b);
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 * var_2)), _wgslsmith_f_op_vec3_f32(floor(var_1.b)))));
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1717f, _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.e, var_1.c, var_0.c, 4294967295u), Struct_1(-461f, vec3<f32>(var_2.x, 991f, -1819f), 54464u, false, var_2.x))), _wgslsmith_f_op_f32(min(-158f, 1153f)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(~vec4<u32>(var_1.c, 1u, var_1.c, var_0.c), Struct_1(-2831f, vec3<f32>(var_2.x, var_0.e, 2257f), var_1.c, var_1.d, var_0.e))), _wgslsmith_f_op_f32(-var_2.x), var_2.x))));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer((~(~vec2<u32>(u_input.d, 76891u)) | vec2<u32>(4294967295u, 1u)) | ((vec2<u32>(var_1.c, 76951u) >> (vec2<u32>(var_1.c, var_1.c) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(1u, 56523u)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(628f, var_2.x, var_1.b.x, 763f), vec4<f32>(-662f, var_2.x, var_1.a, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(240f, -1481f, 271f, var_2.x)))), vec4<f32>(-1055f, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-1319f + _wgslsmith_f_op_f32(round(var_2.x)))))));
}

