struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(0i), Struct_1(-1i), Struct_1(5491i), Struct_1(10253i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(-32503i), Struct_1(i32(-2147483648)), Struct_1(48931i), Struct_1(1i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-15780i), Struct_1(-6617i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(45687i), Struct_1(54i), Struct_1(4138i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-44275i), Struct_1(4441i));

var<private> global2: array<i32, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(countOneBits(global2[_wgslsmith_index_u32(u_input.b & _wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), _wgslsmith_sub_u32(u_input.b, 4294967295u)), 28u)]));
    global0 = ~u_input.b;
    var var_1 = _wgslsmith_add_u32(17345u ^ ~u_input.a, max(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), abs(vec3<u32>(31443u, 0u, u_input.a) | vec3<u32>(u_input.b, 17622u, 1u)))));
    var var_2 = select(vec3<bool>(any(vec3<bool>(false, false, true)) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f + 1832f) * _wgslsmith_f_op_f32(ceil(-300f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f - -620f)), !any(vec2<bool>(true, true))), !select(vec3<bool>(any(vec2<bool>(true, true)), true, global2[_wgslsmith_index_u32(u_input.a, 28u)] <= global2[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<bool>(true, true, true), true), !(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, 0u), countOneBits(0u)), 28u)] < var_0.a));
    var var_3 = select(!vec4<bool>(var_2.x, select(true, var_2.x, true), var_2.x || !var_2.x, select(var_2.x, true, any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), vec4<bool>(any(!select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(false, var_2.x, true, false), var_2.x)), false, any(select(select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, true, false, var_2.x)), vec4<bool>(true, var_2.x, false, var_2.x), true)), true), select(!select(!vec4<bool>(true, var_2.x, true, true), !vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x), vec4<bool>(!var_2.x, select(true, var_2.x, u_input.a < u_input.a), true, any(!vec3<bool>(var_2.x, var_2.x, true))), !(!vec4<bool>(true, var_2.x, var_2.x, true))));
    return vec2<u32>(u_input.b, u_input.a);
}

fn func_2() -> StorageBuffer {
    let var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1219f * _wgslsmith_f_op_f32(1487f - -527f)))));
    global2 = array<i32, 28>();
    global1 = array<Struct_1, 25>();
    var var_2 = global1[_wgslsmith_index_u32(var_0.x, 25u)];
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, -249f, var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1763f, -1033f, var_1, var_1)))))), max(~(select(vec3<u32>(1u, u_input.a, 8694u), vec3<u32>(1u, u_input.b, 4294967295u), true) << (~vec3<u32>(1u, 1u, var_0.x) % vec3<u32>(32u))), reverseBits(~(vec3<u32>(var_0.x, u_input.b, var_0.x) >> (vec3<u32>(31194u, 1u, u_input.a) % vec3<u32>(32u))))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 4504u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(21920u, u_input.b))), 27733u, min(u_input.b << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 23770u), vec2<u32>(var_0.x, 0u)))), ~vec4<u32>(~var_0.x, ~1u, var_0.x, 1u)), var_1, u_input.b);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>) -> StorageBuffer {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 28>();
    let x = u_input.a;
    s_output = func_1(-313f, ~(reverseBits(max(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(1u, u_input.a, u_input.a))) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(36340u, 56797u, 31316u))), -((~vec3<i32>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(7301u, 28u)], global2[_wgslsmith_index_u32(11050u, 28u)]) | select(vec3<i32>(global2[_wgslsmith_index_u32(45460u, 28u)], global2[_wgslsmith_index_u32(29734u, 28u)], -94677i), vec3<i32>(0i, global2[_wgslsmith_index_u32(1u, 28u)], -43626i), vec3<bool>(false, false, true))) ^ ~select(vec3<i32>(1i, global2[_wgslsmith_index_u32(0u, 28u)], 0i), vec3<i32>(-45929i, 12436i, global2[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<bool>(true, false, false))));
}

