struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 23> = array<bool, 23>(false, true, false, true, false, false, true, false, true, true, true, false, true, true, true, false, true, true, true, true, false, true, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> u32 {
    global0 = true;
    var var_0 = Struct_1(vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = vec2<bool>(!global1[_wgslsmith_index_u32(24455u, 23u)], !global1[_wgslsmith_index_u32(var_0.a.x, 23u)]);
    let var_2 = global1[_wgslsmith_index_u32(var_0.a.x, 23u)];
    global0 = true;
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, var_0.a.x, var_0.a.x, 1u) & vec4<u32>(~var_0.a.x, ~var_0.a.x, ~var_0.a.x, var_0.a.x)), _wgslsmith_mult_vec4_u32(var_0.a, var_0.a));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(~(~abs(arg_0.a)));
    var var_2 = arg_0;
    global0 = true;
    var_1 = arg_0;
    return ~(~var_1.a.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    var var_0 = select(all(vec2<bool>(true, true)), arg_1.a.x > ~_wgslsmith_dot_vec3_u32(firstTrailingBit(arg_1.a.zzw), ~vec3<u32>(arg_1.a.x, 1u, arg_1.a.x)), all(select(vec2<bool>(false, true), vec2<bool>(false, !global1[_wgslsmith_index_u32(38985u, 23u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 23u)], false), select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], true), global1[_wgslsmith_index_u32(arg_1.a.x, 23u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 23u)], global1[_wgslsmith_index_u32(arg_1.a.x, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]))))));
    let var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.a.x, arg_1.a.x, arg_1.a.x) << (arg_1.a % vec4<u32>(32u)), abs(vec4<u32>(6983u, arg_1.a.x, arg_1.a.x, 4294967295u))), arg_1.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, -103f), vec4<f32>(340f, arg_0, 1386f, -949f))))))));
    return u_input.a << (~(~4294967295u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-579f, 991f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-130f * 617f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1206f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(577f, -867f))))))));
    var var_1 = !global1[_wgslsmith_index_u32(69599u | select(~_wgslsmith_div_u32(37352u, 4294967295u), 5246u, (var_0.x >= -2458f) || !global1[_wgslsmith_index_u32(1u, 23u)]), 23u)];
    let var_2 = ~vec2<u32>(func_1(), ~(1u >> (_wgslsmith_sub_u32(1u, 0u) % 32u)));
    var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(~func_2(Struct_1(select(vec4<u32>(0u, 22584u, 4294967295u, 83305u), vec4<u32>(7977u, var_2.x, 34011u, 73509u), false)))), 23u)];
    let var_3 = !(!(all(!vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 23u)], global1[_wgslsmith_index_u32(47409u, 23u)], global1[_wgslsmith_index_u32(var_2.x, 23u)], true)) && (true == select(global1[_wgslsmith_index_u32(var_2.x, 23u)], false, true))));
    global1 = array<bool, 23>();
    var var_4 = Struct_1(~(_wgslsmith_div_vec4_u32(vec4<u32>(12469u, 12690u, 28126u, 1u), abs(vec4<u32>(var_2.x, var_2.x, 1728u, 1775u))) >> (vec4<u32>(~var_2.x, ~var_2.x, 17939u, _wgslsmith_sub_u32(var_2.x, 0u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, i32(-1i) * -1i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1963f)), Struct_1(var_4.a))), 104f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-427f, 1105f, var_0.x, 336f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, -1000f, 1544f)))))), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, ~u_input.a), -vec3<i32>(-u_input.a, _wgslsmith_clamp_i32(-12443i, u_input.a, u_input.a), _wgslsmith_div_i32(u_input.a, 1209i))));
}

