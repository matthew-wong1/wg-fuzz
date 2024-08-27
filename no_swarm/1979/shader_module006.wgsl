struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: bool = true;

var<private> global2: array<u32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> f32 {
    global1 = select(!(!(_wgslsmith_f_op_f32(abs(-906f)) < _wgslsmith_f_op_f32(-arg_1.d))), any(vec3<bool>(false, true, false)), true);
    global2 = array<u32, 8>();
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(true, true, true, true)));
    global0 = array<Struct_4, 18>();
    global1 = true;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(-392f, 1412f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = !select(!vec2<bool>(any(vec4<bool>(var_0, var_0, var_0, false)), var_0), vec2<bool>(true, _wgslsmith_f_op_f32(-161f * -1082f) == _wgslsmith_f_op_f32(func_1(911f, Struct_1(vec3<f32>(267f, -396f, -382f), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 28792u), vec3<u32>(global2[_wgslsmith_index_u32(33035u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], 4294967295u), 731f), u_input.a.x))), any(!vec2<bool>(var_0, true)));
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(select(40404u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], var_0), 8u)]), 8u)], select(13144u, global2[_wgslsmith_index_u32(0u, 8u)], true)), _wgslsmith_add_u32(84413u, global2[_wgslsmith_index_u32(0u, 8u)]) ^ ~_wgslsmith_sub_u32(3694u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(min(var_2.x, ~4294967295u), 4294967295u, _wgslsmith_clamp_u32(~min(4294967295u, 17887u), global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(1u, 20783u), 10017u), 8u)], 47914u)), 614f, vec4<u32>(~_wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32(68589u, var_2.x)), var_2.x, ~(~1u), ~var_2.x));
}

