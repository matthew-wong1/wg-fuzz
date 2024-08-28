struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(1i, 2147483647i, 4566i, 2147483647i, 22112i, i32(-2147483648), 0i, 2147483647i, 0i, -20294i, 0i, 1i, 65935i, 1i, 2147483647i, 0i, 17410i, 2147483647i, -1i, -1i, 2147483647i, 1i, 23942i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = Struct_1(~1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, arg_0.b.x, 283f) - vec3<f32>(225f, -707f, -1838f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d.x, -1902f, arg_0.d.x), vec3<f32>(arg_0.d.x, arg_0.b.x, arg_0.d.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.wxz))) - arg_0.d.yyw), !((firstTrailingBit(global0[_wgslsmith_index_u32(41458u, 23u)]) & global0[_wgslsmith_index_u32(9432u, 23u)]) < min(global0[_wgslsmith_index_u32(~u_input.d, 23u)], ~(-17044i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-407f - arg_0.d.x), arg_0.b.x, _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.d.x)), arg_0.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.x, arg_0.d.x, 637f, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1225f, 356f, -193f, 1472f)))))), vec3<bool>(arg_0.e.x, any(vec4<bool>(false, true, true, true)), !(!all(arg_0.e.yy))));
    global0 = array<i32, 23>();
    return 1953f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(~0u, ~u_input.d, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.d, vec3<f32>(-1160f, -874f, -419f), true, vec4<f32>(1000f, 1954f, -2134f, 1000f), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(min(-651f, -184f)), _wgslsmith_f_op_f32(step(2468f, 277f))), vec3<f32>(_wgslsmith_f_op_f32(round(-564f)), _wgslsmith_f_op_f32(-1000f + -1816f), _wgslsmith_f_op_f32(263f * -766f)))), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -138f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2062f) + 1245f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, vec3<f32>(200f, 288f, -428f), true, vec4<f32>(-349f, -689f, -391f, -842f), vec3<bool>(false, false, true)))))))), select(vec3<bool>(true, !all(vec2<bool>(false, false)), false), vec3<bool>(any(vec4<bool>(false, false, true, false)), !any(vec3<bool>(true, true, false)), true), true));
    let var_1 = var_0.a;
    var var_2 = vec4<bool>(~(u_input.e | u_input.c) >= u_input.e, true & all(select(var_0.e.xx, !var_0.e.yz, var_0.e.x)), true, true);
    var var_3 = 0u;
    let var_4 = var_0;
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_mod_u32(abs(_wgslsmith_mod_u32(u_input.a.x, ~min(7523u, 0u))), u_input.a.x);
    let var_1 = func_2();
    var var_2 = arg_0.c;
    var_0 = ~_wgslsmith_mod_u32(~(~1u) ^ arg_0.a, ~(56567u << (var_1.a % 32u)) | 92895u);
    var_2 = false;
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.d, u_input.d));
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    let var_1 = Struct_1(u_input.d, vec3<f32>(-2020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1942f)) - _wgslsmith_f_op_f32(-170f - _wgslsmith_f_op_f32(-2902f * -361f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(2760u, vec3<f32>(551f, 1309f, -1434f), false, vec4<f32>(-212f, -544f, 2071f, -700f), vec3<bool>(false, true, true)), -7761i, false))) - _wgslsmith_f_op_f32(step(1000f, -588f)))), true, vec4<f32>(142f, -656f, _wgslsmith_f_op_f32(abs(-1380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1938f * -1857f)))), func_2().e);
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4294967295u, ~(~var_0.x) ^ _wgslsmith_mod_u32(var_1.a, _wgslsmith_add_u32(0u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) * _wgslsmith_f_op_vec4_f32(-var_1.d))), var_1.d)), _wgslsmith_add_u32(~(~var_0.x), ~u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_1.d.x, 801f), vec3<f32>(var_1.b.x, -162f, -1000f)), _wgslsmith_f_op_vec3_f32(var_1.d.zwx - vec3<f32>(var_1.d.x, -1795f, var_1.d.x)), vec3<bool>(false, false, var_1.c))))));
}

