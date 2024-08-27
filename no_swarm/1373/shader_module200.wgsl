struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(11553u, 26989u, 0u, 1549u, 32588u);

var<private> global1: array<u32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    return 192f;
}

fn func_2() -> vec4<f32> {
    global0 = array<u32, 5>();
    var var_0 = -u_input.b.x;
    global0 = array<u32, 5>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1940f)) - _wgslsmith_f_op_f32(f32(-1f) * -629f)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-807f, -506f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f + 703f)) * _wgslsmith_f_op_f32(func_3(Struct_2(-60386i, -1094f)))), _wgslsmith_f_op_f32(-1000f * -1487f), -286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-922f, -155f, true)))))));
    global0 = array<u32, 5>();
    return vec4<f32>(-1225f, 159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, -660f)))) + var_1.x), -115f);
}

fn func_1() -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~41609u, ~global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), firstLeadingBit(select(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(65595u, 5u)], false))), 8u)], _wgslsmith_mod_u32(u_input.d.x, 1u)), 5u)], 8u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 2519f) + _wgslsmith_div_f32(1000f, -1000f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_3 = all(vec3<bool>(var_2.x >= var_2.x, true, true));
    global0 = array<u32, 5>();
    return vec2<bool>(var_3, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(0i, 13416i);
    let var_1 = func_1();
    let var_2 = Struct_1(!select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(!var_1.x, -24462i <= var_0, var_1.x, !var_1.x), var_1.x), 2147483647i);
    let var_3 = Struct_2(u_input.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_2()).x)));
    let var_4 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), 5u)], 4294967295u, abs(~(~global1[_wgslsmith_index_u32(1u, 8u)])) & ~firstLeadingBit(global0[_wgslsmith_index_u32(min(14404u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), 5u)]), _wgslsmith_div_u32(18989u, global1[_wgslsmith_index_u32(u_input.d.x, 8u)]));
    var var_5 = vec3<f32>(var_3.b, 122f, _wgslsmith_f_op_f32(abs(1227f)));
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -213f);
    var var_7 = Struct_2(max(-_wgslsmith_mod_i32(1i, -18708i), -u_input.a) >> (_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-437f)), var_3.b) - -122f) - _wgslsmith_f_op_f32(var_5.x * var_6)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(Struct_2(-66863i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6))))));
}

