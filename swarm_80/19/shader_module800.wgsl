struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(25387u, 43914u, 52772u)), Struct_1(vec3<u32>(37795u, 13368u, 0u)), Struct_1(vec3<u32>(0u, 38137u, 1u)), Struct_1(vec3<u32>(25004u, 32058u, 47787u)), Struct_1(vec3<u32>(4294967295u, 1u, 2395u)), Struct_1(vec3<u32>(0u, 18019u, 35733u)), Struct_1(vec3<u32>(1u, 45572u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(0u, 59905u, 1u)), Struct_1(vec3<u32>(0u, 27469u, 1u)), Struct_1(vec3<u32>(4294967295u, 3810u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(16785u, 1u, 7752u)));

var<private> global2: array<bool, 11> = array<bool, 11>(false, true, true, true, true, true, false, true, false, true, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    return -1683f;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(1u, global0[_wgslsmith_index_u32(28544u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)])))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f + 828f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1173f - -179f))))), 910f);
    var var_1 = Struct_1(~(~vec3<u32>(~global0[_wgslsmith_index_u32(22534u, 11u)], u_input.b, global0[_wgslsmith_index_u32(~4294967295u, 11u)])));
    global2 = array<bool, 11>();
    var var_2 = 27794u;
    var var_3 = Struct_1(~(select(_wgslsmith_sub_vec3_u32(var_1.a, var_1.a), vec3<u32>(var_1.a.x, 0u, 0u) << (vec3<u32>(var_1.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), any(vec2<bool>(arg_0, true))) << (~_wgslsmith_mult_vec3_u32(var_1.a, var_1.a) % vec3<u32>(32u))));
    return var_0.x;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    var var_0 = Struct_1(vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 817u, u_input.b, u_input.b) << (vec4<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(15650u, 11u)], arg_0.a.x) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 1u, arg_0.a.x, 42985u), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], 38223u))), 15802u));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-383f)), _wgslsmith_f_op_f32(sign(753f))) - 1f))), global2[_wgslsmith_index_u32(~(10757u | _wgslsmith_dot_vec2_u32(var_0.a.zz & arg_0.a.zy, vec2<u32>(0u, 63714u))), 11u)]));
    var var_2 = arg_0;
    return ~(~(~(~vec3<u32>(0u, var_0.a.x, global0[_wgslsmith_index_u32(78643u, 11u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(_wgslsmith_add_vec3_u32(func_1(global1[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 13u)]), vec3<u32>(abs(u_input.a.x >> (4294967295u % 32u)), 51714u, ~global0[_wgslsmith_index_u32(select(22852u, 4294967295u, true), 11u)])));
    var var_2 = global1[_wgslsmith_index_u32((max(4294967295u, global0[_wgslsmith_index_u32(1u | _wgslsmith_mult_u32(u_input.b, 4294967295u), 11u)]) >> (1u % 32u)) & u_input.a.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-107f, -122f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-987f, -839f) - vec2<f32>(181f, -1001f))))))));
}

