struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(-126f), Struct_1(1108f), true, vec3<f32>(-501f, -968f, 264f)), Struct_2(Struct_1(447f), Struct_1(1000f), false, vec3<f32>(-1219f, 288f, 268f)), Struct_2(Struct_1(-793f), Struct_1(-427f), true, vec3<f32>(1663f, 203f, -211f)), Struct_2(Struct_1(-993f), Struct_1(-1000f), true, vec3<f32>(809f, -1302f, 1064f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = select(vec4<bool>(true & select(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)), false), !any(vec3<bool>(false, false, true)), all(vec2<bool>(false, true)), !(all(vec4<bool>(false, false, false, false)) && true)), vec4<bool>(any(vec2<bool>(false, true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)), ~select(88243u, u_input.c, false) <= ~0u, !all(vec2<bool>(false, true))), vec4<bool>(false, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true))));
    var var_1 = firstLeadingBit(u_input.a);
    let var_2 = _wgslsmith_mod_vec4_i32(-(~u_input.e), -(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.d, 0i, -34843i, 1i), u_input.e) | ~(-vec4<i32>(-94223i, -6284i, -2147483647i, u_input.a.x))));
    var_0 = vec4<bool>(true || var_0.x, true, !(!(!var_0.x)), true);
    let var_3 = vec3<u32>(u_input.c, u_input.c, reverseBits(_wgslsmith_sub_u32(1u, u_input.c)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f * 303f)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-656f)), arg_0), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(arg_0, arg_0))), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_0), vec2<f32>(-2064f, 567f))))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1548f)))));
    let var_3 = global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_sub_u32(~0u, 4294967295u)), 5u)];
    var var_4 = !vec4<bool>(all(!(!vec2<bool>(var_3.c, true))), var_3.c, var_3.c, false);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.d - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1030f, var_1.a, var_0.x) + _wgslsmith_f_op_vec3_f32(max(var_3.d, vec3<f32>(var_3.a.a, 109f, var_1.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.d))), !(!var_4.x)))) * vec3<f32>(223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(853f))), var_1.a));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a))), _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1741f), !arg_0))))));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global1 = array<Struct_2, 4>();
    return Struct_2(arg_1, arg_1, !all(vec4<bool>(true, arg_0, false, arg_0)) && true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1.a, vec3<u32>(u_input.c, u_input.c, u_input.c) << (~vec3<u32>(u_input.c, 4294967295u, 1u) % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mult_u32(u_input.c, u_input.c) >= ~u_input.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(961f * -369f), 2035f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(2685f, 146f) + -669f))));
    global0 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_sub_i32(7989i, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.xz, 1326f, var_1 ^ -2147483647i);
}

