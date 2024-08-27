struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~u_input.a.x, 11u)]));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1777f)))), _wgslsmith_f_op_f32(-var_0.x), -715f, _wgslsmith_f_op_f32(var_0.x + var_0.x)));
    let var_1 = Struct_2(6783u, select(vec3<i32>(1i, 1i, 1i), -abs(vec3<i32>(5616i, -1i, 10067i)), vec3<bool>(true, any(vec4<bool>(true, true, false, true)), false)) << (u_input.b.yxy % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-var_0.x), true));
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-1434f, var_0.x));
}

fn func_3() -> f32 {
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1028f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1044f, 2270f, false)))))), !(u_input.a.x >= u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(191f, 426f, var_0.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1703f, -312f, 250f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(795f, var_0.a, -1000f) - vec3<f32>(var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-256f, -275f, 860f), vec3<f32>(-1329f, var_0.a, -2969f))), !var_0.b)))));
    global0 = array<vec4<f32>, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_1.x) + _wgslsmith_f_op_f32(round(922f)));
}

fn func_1() -> StorageBuffer {
    var var_0 = ~u_input.a;
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -770f) != _wgslsmith_f_op_f32(func_2()));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(278f + -342f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-708f)) * _wgslsmith_f_op_f32(-968f + _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -404f), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(f32(-1f) * -1005f));
    var_0 = u_input.b.xy;
    var var_3 = Struct_2(~1u, vec3<i32>(-1i) * -(reverseBits(vec3<i32>(10506i, -2147483647i, -1i)) << (~u_input.b.zxw % vec3<u32>(32u))), Struct_1(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(sign(var_2.x))) <= _wgslsmith_f_op_f32(-1044f - -630f)));
    return StorageBuffer(-358f, -138f, _wgslsmith_div_u32(1u, 48991u), ~max(reverseBits(vec4<i32>(18392i, var_3.b.x, -2147483647i, -12069i)), -vec4<i32>(4291i, 46850i, 0i, var_3.b.x)) | ~vec4<i32>(1i, min(35i, 1i), 0i, countOneBits(59749i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-146f + _wgslsmith_f_op_f32(step(-1057f, 472f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1694f + 1523f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1230f * _wgslsmith_f_op_f32(f32(-1f) * -840f))), -312f));
    var var_2 = var_1;
    global0 = array<vec4<f32>, 11>();
    let var_3 = 4294967295u;
    let x = u_input.a;
    s_output = func_1();
}

