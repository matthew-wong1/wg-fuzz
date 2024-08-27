struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<f32, 5> = array<f32, 5>(1282f, 199f, -409f, 1000f, 870f);

var<private> global1: array<f32, 16> = array<f32, 16>(1001f, 1000f, -522f, 629f, 1000f, 887f, -2272f, 301f, -691f, -475f, -894f, -124f, -577f, -488f, -1000f, 138f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1277f, 1224f, 495f), vec3<f32>(732f, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(56529u, 16u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<f32>(230f, global1[_wgslsmith_index_u32(u_input.a, 16u)], -1095f))))) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 5u)]), -1654f))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), vec4<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 5u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -228f), true, all(vec3<bool>(true, true, true)), select(true, global0[_wgslsmith_index_u32(u_input.a, 5u)] <= -851f, true))));
    let var_1 = _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(1i, 1i) << (vec2<u32>(u_input.a, ~4294967295u) % vec2<u32>(32u))), vec2<i32>(0i, 1i));
    global0 = array<f32, 5>();
    return _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 46738u, 3188u), abs(vec3<u32>(u_input.a, u_input.a, 0u))), ~(select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 1u, 4294967295u), var_0.b.yyy) | (vec3<u32>(4294967295u, 95039u, u_input.a) >> (vec3<u32>(u_input.a, 30275u, u_input.a) % vec3<u32>(32u))))) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 5u)]);
    global0 = array<f32, 5>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2298f) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.x, 16u)], global1[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(func_3().x, 16u)] * _wgslsmith_f_op_f32(f32(-1f) * -507f))))), select(select(arg_0, !arg_0, arg_0), select(arg_0, arg_0, !select(arg_0.x, true, arg_0.x)), !(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 16u)], var_0)) < global0[_wgslsmith_index_u32(reverseBits(26024u), 5u)])));
    var var_2 = Struct_1(-1i, 93552u);
    let var_3 = u_input.a;
    return ~u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 0u), ~26298u ^ u_input.a), 16u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_3.a.x << (~4294967295u % 32u), 16u)] - global0[_wgslsmith_index_u32(~(~arg_3.e.b), 5u)]));
    global1 = array<f32, 16>();
    let var_1 = arg_3.a;
    let var_2 = arg_3.c;
    var var_3 = arg_3;
    return ~_wgslsmith_add_u32(func_4(arg_0.b, func_3()), 89343u << (var_2.b % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = vec3<bool>(((~22540u & (arg_0.e.b << (arg_0.a.x % 32u))) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.c.b, 0u), 1u) % 32u)) < ~(~1u), arg_1.b.x, arg_1.b.x);
    let var_1 = Struct_3((vec4<u32>(0u, u_input.a, func_2(Struct_2(arg_1.a, arg_1.b), arg_0, 7030u, Struct_3(vec4<u32>(u_input.a, u_input.a, 1u, 4235u), arg_0.b, Struct_1(arg_0.c.a, u_input.a), arg_0.d, Struct_1(arg_0.c.a, arg_0.e.b))), select(arg_0.b.b, arg_0.c.b, arg_0.d)) & vec4<u32>(1u, ~arg_0.a.x, arg_0.c.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.b, u_input.a), vec2<u32>(arg_0.e.b, 7836u)))) | arg_0.a, Struct_1(arg_2 << (arg_0.a.x % 32u), reverseBits(reverseBits(u_input.a ^ u_input.a))), arg_0.e, global0[_wgslsmith_index_u32(4294967295u, 5u)] == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2663f))), arg_0.c);
    let var_2 = arg_1.a.yz;
    global0 = array<f32, 5>();
    global1 = array<f32, 16>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 5>();
    let var_0 = _wgslsmith_sub_vec3_u32(~countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 49637u), vec3<u32>(u_input.a, u_input.a, 1u))), min(~abs(~vec3<u32>(1u, 68423u, u_input.a)), vec3<u32>(firstTrailingBit(func_1(Struct_3(vec4<u32>(u_input.a, u_input.a, u_input.a, 41051u), Struct_1(54712i, 4294967295u), Struct_1(5328i, 0u), true, Struct_1(-15218i, u_input.a)), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], 1000f, 1000f), vec4<bool>(false, false, true, false)), 21249i)), _wgslsmith_div_u32(~u_input.a, u_input.a), ~_wgslsmith_clamp_u32(u_input.a, u_input.a, 13220u))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0)), _wgslsmith_mod_vec3_u32(~var_0, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 106828u, var_0.x), vec3<u32>(var_0.x, 42013u, u_input.a)))), 5u)]);
}

