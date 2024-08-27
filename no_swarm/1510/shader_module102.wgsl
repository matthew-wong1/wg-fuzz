struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec4<i32>, 4>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, true));

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(20605u, 4294967295u, 15322u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), max(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(6667u, 39986u, 0u, 67948u), vec4<u32>(4294967295u, 83841u, 0u, 0u), true) << (~vec4<u32>(0u, 0u, 4294967295u, 38588u) % vec4<u32>(32u))));
    var var_1 = any(!global2.a.xx);
    return -1353f;
}

fn func_3(arg_0: f32) -> vec2<u32> {
    return ~vec2<u32>(1u, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    global0 = array<Struct_1, 16>();
    let var_0 = func_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.xz) * vec2<f32>(arg_3.x, arg_3.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_3.zz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.xx - arg_3.yy))), -countOneBits(-u_input.a.x))));
    let var_1 = abs(u_input.a.xx);
    var var_2 = ~(~vec4<u32>(13590u, _wgslsmith_mult_u32(var_0.x, 4294967295u), _wgslsmith_mod_u32(arg_2 >> (arg_2 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(57109u, var_0.x, arg_2, 54482u), vec4<u32>(arg_2, arg_2, 22439u, arg_2))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_2), var_0) & firstLeadingBit(arg_2)));
    var var_3 = var_2.wyw;
    return abs(countOneBits(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_u32(abs(max(abs(4294967295u), func_1(global0[_wgslsmith_index_u32(41097u, 16u)], u_input.a.zy, 0u, vec3<f32>(-597f, -587f, 346f)))), 0u) != ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(36429u, 0u) >> (countOneBits(55426u) % 32u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(31226u, 54490u, 29636u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = array<vec4<i32>, 4>();
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_dot_vec4_i32(~global1[_wgslsmith_index_u32(~58235u, 4u)], global1[_wgslsmith_index_u32(firstTrailingBit(1u), 4u)]);
    let var_1 = Struct_1(global2.a);
    let var_2 = 15178i;
    var var_3 = select(!(!vec4<bool>(global2.a.x && var_1.a.x, true, false & global2.a.x, true)), select(select(select(select(vec4<bool>(false, var_1.a.x, true, true), var_1.a, false), select(vec4<bool>(global2.a.x, false, true, var_1.a.x), global2.a, var_1.a.x), !global2.a.x), !select(global2.a, global2.a, true), select(true, false, true)), vec4<bool>(all(vec2<bool>(true, true)), true, any(var_1.a.zxy), all(!vec3<bool>(global2.a.x, false, var_1.a.x))), !vec4<bool>(var_1.a.x, var_1.a.x, false, global2.a.x)), ~1u <= func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1212f))))).x);
    global0 = array<Struct_1, 16>();
    global1 = array<vec4<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-510f, 1071f)))));
}

