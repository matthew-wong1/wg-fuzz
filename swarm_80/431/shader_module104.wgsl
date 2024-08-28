struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 7> = array<bool, 7>(false, true, true, false, false, false, false);

var<private> global3: array<Struct_2, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = countOneBits(u_input.b.x);
    var var_1 = global1.a;
    global1 = global3[_wgslsmith_index_u32(arg_0, 6u)];
    var var_2 = !(!(!all(vec2<bool>(true, false)))) & false;
    var var_3 = vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.c.zy, countOneBits(u_input.c.xy)), _wgslsmith_div_i32(-20768i, ~u_input.c.x) >> (_wgslsmith_mult_u32(abs(arg_0), 26081u) % 32u)), -1i);
    return select(!global1.a.a, true, false);
}

fn func_2() -> bool {
    var var_0 = !(!(select(global1.a.a & true, func_3(u_input.a), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(0u, 7u)]))) & false));
    var var_1 = vec4<bool>(!(true && any(!vec3<bool>(false, false, global1.a.a))), func_3(_wgslsmith_mod_u32(~32390u, u_input.a)) | all(vec4<bool>(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 7u)], true, true, any(vec2<bool>(true, false)))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(65917u, _wgslsmith_clamp_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(29120u, u_input.a, 8780u), vec3<u32>(13573u, 57338u, 1u))), 0u, ~_wgslsmith_mod_u32(u_input.a, 1u))), 7u)], any(vec2<bool>(any(vec2<bool>(global1.a.a, global1.a.a)), true)));
    let var_2 = u_input.a;
    var_0 = true;
    let var_3 = ~firstLeadingBit(firstTrailingBit(vec2<u32>(9502u, 67687u) | vec2<u32>(47157u, u_input.a))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 1u));
    return true;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<bool> {
    let var_0 = vec4<bool>(all(vec3<bool>(false && !arg_1, func_2(), global2[_wgslsmith_index_u32(reverseBits(u_input.a), 7u)])), any(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 7u)], all(select(vec2<bool>(false, arg_1), vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<bool>(true, false))))), true, true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1144f)) * 565f), -186f, false)), -553f, -1188f, 985f);
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    var var_2 = global1.a;
    return select(select(vec2<bool>(func_2(), func_2()), select(!var_0.xy, select(!vec2<bool>(true, var_2.a), var_0.xz, var_0.wz), global1.a.a), vec2<bool>(!any(var_0.wz), true)), vec2<bool>(1247f < _wgslsmith_f_op_f32(-var_1.x), all(select(!var_0.ww, vec2<bool>(var_0.x, var_2.a), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], true, arg_1))))), select(select(vec2<bool>(any(vec4<bool>(arg_1, global2[_wgslsmith_index_u32(u_input.a, 7u)], var_2.a, var_2.a)), true), vec2<bool>(true, u_input.a <= 4294967295u), vec2<bool>(true, arg_1)), var_0.ww, all(vec3<bool>(true, arg_1, false && global2[_wgslsmith_index_u32(1u, 7u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(select(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4503u, 4294967295u, 4294967295u), select(vec4<u32>(1u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<bool>(global2[_wgslsmith_index_u32(25579u, 7u)], false, true, global2[_wgslsmith_index_u32(u_input.a, 7u)]))) >> (27212u % 32u)), u_input.a, true), 6u)];
    var var_1 = any(func_1(abs(~u_input.b.x), true)) != true;
    var var_2 = !(!vec4<bool>(true, false, !any(vec2<bool>(global1.a.a, false)), global2[_wgslsmith_index_u32(4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(62560u, u_input.a)) % 32u), 7u)]));
    global0 = array<Struct_2, 14>();
    var var_3 = _wgslsmith_f_op_f32(round(-2477f));
    global0 = array<Struct_2, 14>();
    var var_4 = global0[_wgslsmith_index_u32(select(u_input.a, u_input.a, _wgslsmith_mult_u32(u_input.a >> (u_input.a % 32u), ~(~4294967295u)) != _wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(u_input.a), 92104u, ~u_input.a), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(1u, 0u), vec2<u32>(firstLeadingBit(~1u), u_input.a)));
}

