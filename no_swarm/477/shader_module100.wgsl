struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-601f, -459f, 466f, -1164f, -2189f, -205f, 1026f, 1000f, -613f, -176f, -652f, -757f, 191f, -1556f, 262f, -711f, 1067f, -113f, 295f, -1344f, -194f, 588f, 1363f, 1790f, -978f, 1000f, 1033f, 741f, -487f);

var<private> global1: u32 = 38496u;

var<private> global2: array<Struct_4, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<bool> {
    return select(vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(all(!vec2<bool>(arg_1.a, arg_1.a)), true, false, arg_1.a), any(select(!vec2<bool>(true, arg_1.a), vec2<bool>(u_input.a.x < 72500u, arg_1.a), false)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(((-708f > _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(78141u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)]))) || true) == !(false || arg_0), reverseBits(firstLeadingBit(vec3<u32>(reverseBits(1u), u_input.a.x, 61095u))), !select(select(vec4<bool>(true, true, true, true), func_3(vec2<i32>(0i, -1i), Struct_1(true, vec3<i32>(0i, -22364i, -1i), vec2<f32>(-278f, global0[_wgslsmith_index_u32(1u, 29u)]))), select(vec4<bool>(arg_0, false, true, false), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, false, true))), !vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(699f > global0[_wgslsmith_index_u32(0u, 29u)], arg_0, true, !arg_0)), countOneBits(vec3<i32>(1i, 1i, 1i)), select(!(!(!vec4<bool>(arg_0, true, arg_0, false))), select(vec4<bool>(arg_0, arg_0, u_input.a.x <= 34265u, any(vec2<bool>(arg_0, true))), vec4<bool>(-175f <= global0[_wgslsmith_index_u32(u_input.a.x, 29u)], all(vec2<bool>(arg_0, false)), arg_0, !arg_0), !select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, true, arg_0, true), false)), true));
    global0 = array<f32, 29>();
    global2 = array<Struct_4, 18>();
    var var_1 = Struct_2(Struct_1(true, -reverseBits(vec3<i32>(var_0.d.x, -1i, -1474i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(23072u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 29u)], -464f))))))));
    global2 = array<Struct_4, 18>();
    return Struct_2(Struct_1(var_1.a.a, _wgslsmith_mod_vec3_i32(var_1.a.b, vec3<i32>(-2147483647i, var_0.d.x, max(var_0.d.x, var_1.a.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1213f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), var_1.a.c, vec2<bool>(true, arg_0))) + var_1.a.c))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_4 {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(~(~_wgslsmith_mult_u32(u_input.a.x, 1u))), 29u)];
    var_0 = 128f;
    global2 = array<Struct_4, 18>();
    return global2[_wgslsmith_index_u32(u_input.a.x, 18u)];
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = vec2<bool>(~62726u > u_input.a.x, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true)));
    let var_1 = ~u_input.a;
    return func_4(func_2(false), func_2(all(select(!vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_1.x, 29u)], -304f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 29u)];
    global0 = array<f32, 29>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 29u)];
    var var_2 = !vec4<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))), u_input.a.x > _wgslsmith_mod_u32(60045u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 41963u))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec2<bool>(false, true)))), true);
    var_1 = _wgslsmith_f_op_f32(floor(-1715f));
    var var_3 = func_1(-(~1i));
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, countOneBits(~(~var_3.a.b.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-min(13422i, var_3.a.d.x), -26407i), -vec2<i32>(_wgslsmith_mult_i32(-1i, var_3.a.d.x), ~1i)), var_3.a.d, ~firstLeadingBit(_wgslsmith_mult_u32(31775u >> (u_input.a.x % 32u), countOneBits(u_input.a.x))), ~(~vec4<i32>(0i, var_3.a.d.x & var_3.a.d.x, 2147483647i, var_3.a.d.x)));
}

