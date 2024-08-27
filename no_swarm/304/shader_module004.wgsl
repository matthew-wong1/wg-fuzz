struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4106u, 1u, 13458u);

var<private> global1: Struct_3 = Struct_3(0u, 4294967295u, 1u);

var<private> global2: array<u32, 22>;

var<private> global3: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(28365i, 0i), vec2<i32>(-34139i, -1838i), vec2<i32>(34195i, 39988i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -203i), vec2<i32>(4183i, 2147483647i), vec2<i32>(2147483647i, -13590i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -36303i), vec2<i32>(-1i, -1i), vec2<i32>(0i, -1i), vec2<i32>(34068i, 2147483647i), vec2<i32>(2147483647i, 41311i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_3(~7763u, global0.c, ~(~arg_0));
    var var_1 = Struct_3(19815u, abs(1u), global1.c);
    var_0 = Struct_3(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(49634u, global0.c, 1u), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(36632u, 1u, 0u), vec3<u32>(global1.b, 0u, var_1.b)))), ~(~min(var_1.c, ~var_0.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_1.a), ~vec3<u32>(arg_0, global0.b, ~1u)));
    let var_2 = !(!select(vec3<bool>(1i != u_input.b.x, true, 1278u != global2[_wgslsmith_index_u32(global0.a, 22u)]), vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_3 = Struct_2(abs(~vec2<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 22u)], var_0.a), global2[_wgslsmith_index_u32(49895u, 22u)])), -u_input.b.x, false, !(!vec2<bool>(any(vec4<bool>(false, var_2.x, var_2.x, true)), 1u != global1.a)), -select(~(~global3[_wgslsmith_index_u32(4294967295u, 13u)]), global3[_wgslsmith_index_u32(63123u, 13u)], u_input.a >= u_input.b.x));
    return ~max(countOneBits(firstLeadingBit(-5318i)), max(-2147483647i, 1i) & -var_3.b);
}

fn func_2(arg_0: i32, arg_1: f32) -> f32 {
    global2 = array<u32, 22>();
    var var_0 = vec2<u32>(4294967295u, global0.a);
    global3 = array<vec2<i32>, 13>();
    var var_1 = func_3(32817u);
    let var_2 = 1620i;
    return 984f;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global2 = array<u32, 22>();
    let var_0 = u_input.b.x;
    global2 = array<u32, 22>();
    global3 = array<vec2<i32>, 13>();
    let var_1 = var_0;
    return Struct_1(vec4<f32>(-678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(600f)) - _wgslsmith_f_op_f32(step(-947f, 440f))) * _wgslsmith_f_op_f32(-804f - -983f)), 1217f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(var_0, -809f)), -1167f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -352f))), !(!arg_0.x)))), 4294967295u, ~firstTrailingBit(~vec2<u32>(0u, global0.c) ^ ~vec2<u32>(36069u, 94612u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -990f), -1312f, 787f, _wgslsmith_f_op_f32(1f - 172f));
    global3 = array<vec2<i32>, 13>();
    let var_1 = func_1(vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -328f, 258f, var_0.x), var_1.a, vec4<bool>(true, false, true, true))) * _wgslsmith_f_op_vec4_f32(min(var_1.a, var_1.a))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -182f, var_0.x)), _wgslsmith_f_op_vec4_f32(-var_1.a)))) - var_1.a), 1i);
}

