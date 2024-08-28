struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(0u, 4294967295u, 1u, 85602u, 41701u, 4294967295u, 1u, 38786u, 1u, 37846u, 4294967295u, 39889u, 24745u, 0u, 6923u, 1u, 12951u, 14362u, 0u, 4294967295u, 90508u, 39768u, 0u, 4294967295u, 0u, 1u, 55270u);

var<private> global1: array<bool, 19>;

var<private> global2: array<i32, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 348f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2739f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1975f + 585f), _wgslsmith_f_op_f32(133f + 709f))))), global0[_wgslsmith_index_u32(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37168u, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39767u, 27u)], 27u)], 15898u), vec3<u32>(48994u, 32120u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(107388u, 27u)], 27u)])), 15012u, true), 27u)] | reverseBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35276u, 27u)], 27u)], global0[_wgslsmith_index_u32(18600u, 27u)]), global0[_wgslsmith_index_u32(1u, 27u)], 74144u)));
    var var_1 = Struct_2(var_0.a, -1464f, _wgslsmith_add_u32(countOneBits(var_0.c), ~0u));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(488f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(sign(535f)))), var_1.a, 4294967295u);
    return var_2.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec2<bool>) -> vec4<u32> {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let var_0 = !(!select(!(!vec3<bool>(true, false, arg_3.x)), !vec3<bool>(arg_3.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 27u)], 27u)], 19u)], arg_3.x), any(select(vec4<bool>(global1[_wgslsmith_index_u32(47473u, 19u)], true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 27u)], 19u)]), vec4<bool>(true, false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(arg_2.x, 19u)], false, false)))));
    let var_1 = func_3(vec4<i32>(1i, ~u_input.a, reverseBits(-2147483647i), -33136i) >> ((vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 27u)], 4294967295u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(49527u, 27u)], arg_2.x), 27925u) >> (~(~vec4<u32>(65352u, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(arg_2.x, 27u)], arg_2.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = array<bool, 19>();
    return _wgslsmith_div_vec4_u32(~vec4<u32>(var_1, ~arg_2.x, 1u, _wgslsmith_add_u32(17690u, 21207u)), vec4<u32>(firstTrailingBit(~abs(arg_2.x)), 35405u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.x, 27u)], 27u)], ~firstTrailingBit(1u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    let var_0 = func_2(arg_2.zz, 1i, vec2<u32>(global0[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(15005u, 62193u, 1u) | 4294967295u, ~12454u), 27u)], _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~37380u, 27u)], global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(41244u, 0u), 27u)])), select(arg_0.xy, vec2<bool>(!any(vec3<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29875u, 27u)], 27u)], 27u)], 19u)])), false), false));
    var var_1 = Struct_3(!(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(30868u, 19u)], arg_0.x), vec3<bool>(false, false, arg_0.x), global1[_wgslsmith_index_u32(1u, 19u)]), !arg_0.wxz, true)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 27u)], var_0.x, 25990u), ~var_0), var_0));
    global2 = array<i32, 20>();
    global1 = array<bool, 19>();
    var var_2 = Struct_3(arg_0.xyz, vec4<u32>(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(1u, var_1.b.x)), min(var_0.zz, firstLeadingBit(vec2<u32>(var_0.x, var_1.b.x)))), 0u, ~max(_wgslsmith_sub_u32(var_1.b.x, var_0.x), var_0.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 27u)]), _wgslsmith_div_u32(1u, var_0.x)));
    return 924f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 27>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1372f * _wgslsmith_f_op_f32(abs(-207f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43371u, 27u)], 27u)], 27u)], 27u)], 27u)], 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(793u, 27u)], 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45544u, 27u)], 19u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20908u, 27u)], 19u)]), -1565f, vec3<i32>(global2[_wgslsmith_index_u32(5798u, 20u)], u_input.a, 0i))))))), 582f);
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(0u >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6966u, 27u)], 27u)] % 32u)), _wgslsmith_div_f32(var_0, var_0));
}

