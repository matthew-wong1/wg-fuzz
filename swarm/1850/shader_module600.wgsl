struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 13>;

var<private> global2: Struct_1;

var<private> global3: array<u32, 15> = array<u32, 15>(4294967295u, 24999u, 4294967295u, 1u, 3519u, 26439u, 69622u, 45325u, 1u, 1u, 0u, 1u, 1u, 61084u, 26939u);

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global3 = array<u32, 15>();
    var var_0 = Struct_1(true);
    var var_1 = true;
    let var_2 = Struct_1(global2.a);
    var_1 = var_2.a;
    return all(!vec3<bool>(any(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, global2.a), true)), false, true));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(160f, _wgslsmith_f_op_f32(-1734f * _wgslsmith_f_op_f32(floor(-987f))))), 1026f);
    let var_1 = Struct_1(all(vec2<bool>(true, func_3())));
    let var_2 = global4[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(~(~(~68454u)), _wgslsmith_mult_u32(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(21727u, 15u)], 6178u), all(vec3<bool>(var_1.a, global2.a, global2.a))), _wgslsmith_mult_u32(min(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19026u, 15u)], 15u)], 15u)], 15u)]), ~7463u))), 82426u, var_1.a), 2u)];
    global2 = Struct_1(global2.a);
    let var_3 = var_1;
    return var_0.x;
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 13>();
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f * _wgslsmith_div_f32(-1539f, 1704f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f - 223f) * 408f)), 634f, -663f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(901f, 1135f, 580f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(225f, 511f, 112f) + vec3<f32>(-705f, 426f, -1041f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-314f, -1497f, -1000f), vec3<f32>(1000f, 1000f, -570f)))) * vec3<f32>(_wgslsmith_f_op_f32(max(-140f, _wgslsmith_f_op_f32(652f * -125f))), _wgslsmith_f_op_f32(func_2(global2.a)), -821f)));
    var var_2 = !(!select(!select(vec4<bool>(false, true, false, global2.a), vec4<bool>(global2.a, false, global2.a, global2.a), vec4<bool>(global2.a, false, global2.a, global2.a)), select(vec4<bool>(true, global2.a, false, global2.a), select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(false, true, global2.a, global2.a), vec4<bool>(global2.a, global2.a, global2.a, true)), select(vec4<bool>(global2.a, true, false, global2.a), vec4<bool>(global2.a, global2.a, global2.a, false), global2.a)), func_3()));
    global3 = array<u32, 15>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_1();
    let var_0 = select(!vec3<bool>(u_input.a.x != u_input.a.x, any(!vec3<bool>(global2.a, global2.a, global2.a)), all(vec4<bool>(false, true, global2.a, false))), !select(!(!vec3<bool>(global2.a, global2.a, global2.a)), vec3<bool>(global3[_wgslsmith_index_u32(24025u, 15u)] > 87374u, all(vec4<bool>(global2.a, global2.a, global2.a, global2.a)), true), !global2.a), !(!all(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(true, global2.a, false), true))));
    let var_1 = Struct_1(select(!(-u_input.a.x < ~2147483647i), true, !var_0.x));
    var var_2 = var_1;
    global4 = array<Struct_1, 2>();
    let var_3 = u_input.a.xz;
    let var_4 = firstLeadingBit(vec2<u32>(75237u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(max(31556u, global3[_wgslsmith_index_u32(8058u, 15u)]) >> ((1574u ^ global3[_wgslsmith_index_u32(0u, 15u)]) % 32u)), 15u)], 15u)]));
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

