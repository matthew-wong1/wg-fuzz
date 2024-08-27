struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec2<bool>(true, true), Struct_1(25804i)), Struct_3(vec2<bool>(false, false), Struct_1(-1i)), Struct_3(vec2<bool>(true, true), Struct_1(74307i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec2<u32> {
    global0 = array<Struct_3, 3>();
    let var_0 = -1000f;
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    return u_input.a.zy;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    let var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2.yzy)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(arg_2.wyx)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, 1116f) - arg_2.ywy) - _wgslsmith_f_op_vec3_f32(-arg_2.zyx)))) + arg_2.zyw);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_2.xwy)) * _wgslsmith_f_op_vec3_f32(-arg_2.wzx))))));
    var var_3 = true;
    global0 = array<Struct_3, 3>();
    return _wgslsmith_f_op_f32(trunc(1000f));
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 3>();
    var var_0 = 551f;
    let var_1 = _wgslsmith_f_op_f32(func_3(abs(97853u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, u_input.d.x), func_2()) % 32u)), !(!(countOneBits(u_input.a.x) >= u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2879f, 1153f, 681f, -647f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 694f, -2507f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-379f, 1207f, 216f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-618f, 1134f, var_1)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, 2021f, 421f))))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(-var_1))), -162f, _wgslsmith_f_op_f32(sign(-1392f))))));
    let var_3 = vec2<i32>(-(~reverseBits(~u_input.b.x)), u_input.e.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), 2213f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-820f + 310f), -240f)) * _wgslsmith_f_op_f32(-1455f - _wgslsmith_f_op_f32(floor(-106f)))))));
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(1i & u_input.b.x);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~reverseBits(u_input.a.x)), u_input.a.x, u_input.a.x, 4294967295u), u_input.a), 3u)];
    var var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1439f * var_0.x), _wgslsmith_f_op_vec3_f32(exp2(var_0.wzz)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1502f, var_0.x, var_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-1026f, 552f, -314f), vec3<f32>(941f, var_0.x, 191f)), select(vec3<bool>(true, false, true), vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x), false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yyz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1483f, var_0.x, -156f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zyy - vec3<f32>(var_0.x, 507f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, 1046f, 1528f) - var_0.xyy))), false)));
}

