struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_3() -> bool {
    var var_0 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-167f, -444f))))))));
    return false;
}

fn func_2() -> u32 {
    var var_0 = vec4<bool>(false, all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)) || select(true, true, u_input.a != u_input.a), false, !((~(-15777i) & (u_input.a & u_input.a)) >= -2147483647i));
    let var_1 = Struct_1(func_1(-698f).a);
    let var_2 = !(!vec3<bool>(func_3(), true, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86627u, 31u)], 31u)], 31u)] > _wgslsmith_sub_u32(9858u, 0u)));
    let var_3 = select(vec3<bool>(var_2.x, var_2.x, true), !(!select(!vec3<bool>(var_0.x, var_0.x, var_2.x), var_2, var_2)), vec3<bool>(true, true, ~(~global0[_wgslsmith_index_u32(59630u, 31u)]) == ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(23924u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 31u)], 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67700u, 31u)], 31u)], 31u)]), 31u)]));
    global1 = false;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    let var_0 = Struct_1(-1920f);
    var var_1 = func_1(var_0.a);
    global2 = array<Struct_1, 30>();
    var var_2 = func_1(498f);
    var var_3 = vec3<u32>(min(0u, ~reverseBits(~global0[_wgslsmith_index_u32(23895u, 31u)])), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(1u, global0[_wgslsmith_index_u32(17964u, 31u)])), vec2<u32>(1u, 1u)), ~(~vec2<u32>(1u, global0[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 31u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(2868u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55349u, 31u)], 31u)]) >> (~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)]) % vec2<u32>(32u)))), func_2() ^ countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24054u, 31u)], 31u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 35472u)), vec2<u32>(1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

