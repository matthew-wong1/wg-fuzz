struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(17172u, 16965u), vec2<u32>(15996u, 50230u), vec2<u32>(9258u, 1u), vec2<u32>(38341u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 69983u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 23956u), vec2<u32>(1u, 4294967295u), vec2<u32>(39585u, 1210u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 45560u), vec2<u32>(0u, 1725u), vec2<u32>(92634u, 1u), vec2<u32>(0u, 1u));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    let var_0 = arg_0;
    global2 = array<Struct_2, 10>();
    let var_1 = Struct_2(vec3<bool>(arg_1.a.x, arg_0.a.x, all(!vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x))));
    global1 = 1u;
    let var_2 = arg_1;
    return -1i;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~arg_3.d.x, 10u)];
    global0 = array<vec2<u32>, 17>();
    let var_1 = Struct_2(vec3<bool>(!(!(false && var_0.a.x)), false, (func_3(Struct_2(var_0.a), global2[_wgslsmith_index_u32(arg_3.d.x, 10u)], vec2<f32>(arg_3.a, 343f), -368f) | u_input.b.x) < _wgslsmith_clamp_i32(1i, -2147483647i, -2147483647i)));
    var var_2 = arg_3.c.xz << (arg_3.d.xw % vec2<u32>(32u));
    var var_3 = arg_3;
    return ~_wgslsmith_dot_vec2_u32(abs(~firstTrailingBit(global0[_wgslsmith_index_u32(0u, 17u)])), vec2<u32>(select(~var_3.d.x, _wgslsmith_mult_u32(10425u, 17395u), true), _wgslsmith_sub_u32(_wgslsmith_mult_u32(6656u, 22046u), 94722u)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = arg_2.x;
    global0 = array<vec2<u32>, 17>();
    global1 = reverseBits(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, arg_2.x), arg_3.x, 39331u), 19030u));
    var_0 = 33415u;
    let var_1 = abs(select(-select(vec4<i32>(-2147483647i, 0i, u_input.a.x, -31957i), vec4<i32>(u_input.a.x, 0i, 6589i, 0i), true), ~(vec4<i32>(-2147483647i, 19320i, 2147483647i, u_input.b.x) ^ vec4<i32>(2147483647i, 6332i, u_input.a.x, u_input.b.x)), vec4<bool>(true, any(vec3<bool>(arg_0.a.x, arg_0.a.x, true)), !arg_0.a.x, any(arg_0.a)))) & countOneBits(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -12557i, u_input.a.x, ~(-3247i)) << (~select(vec4<u32>(1u, arg_3.x, 15920u, arg_3.x), vec4<u32>(arg_3.x, arg_1, 4294967295u, 1u), false) % vec4<u32>(32u)));
    return ~(~0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = vec3<u32>(~func_4(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(52779u, 42314u), 10u)], ~func_2(-710f, true, 0u, Struct_1(783f, 1284f, vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, -17179i), vec4<u32>(arg_0.x, arg_0.x, u_input.c, u_input.c))), firstLeadingBit(~vec2<u32>(4294967295u, u_input.c)), ~select(vec3<u32>(60064u, arg_0.x, u_input.c), arg_0, true)), countOneBits(u_input.c & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), arg_0)), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(15960u, arg_0.x, 0u, arg_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.d.x, arg_0.x, arg_0.x), vec4<u32>(28503u, u_input.d.x, 0u, 1u)))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(32396u, firstTrailingBit(arg_0.x)), 10u)];
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_2 = global2[_wgslsmith_index_u32(0u, 10u)];
    return firstLeadingBit(~vec4<i32>(0i, -33529i, -15698i, 52823i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -157f), -1093f, -func_1(vec3<u32>(~u_input.c, 18055u, u_input.d.x), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), false)), ~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 132850u, u_input.c), abs(vec4<u32>(u_input.d.x, u_input.d.x, 1u, 0u)))));
    global0 = array<vec2<u32>, 17>();
    let var_1 = var_0.c.x;
    let var_2 = Struct_2(select(vec3<bool>(true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), true), vec3<bool>(true, !all(vec2<bool>(false, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec4<bool>(false, false, false, false))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.zwz, vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1390f)))), _wgslsmith_f_op_f32(min(-551f, _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(abs(var_0.a))))))), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -37278i), _wgslsmith_mod_i32(u_input.b.x, -1i)), var_0.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, -1069f, var_0.a)))))));
}

