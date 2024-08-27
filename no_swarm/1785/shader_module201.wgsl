struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: Struct_1 = Struct_1(2147483647i);

var<private> global2: array<f32, 5> = array<f32, 5>(410f, 596f, -2197f, -860f, 299f);

var<private> global3: vec3<f32> = vec3<f32>(-773f, -1337f, 611f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(0i);
    global2 = array<f32, 5>();
    let var_1 = !(!vec2<bool>(!(u_input.e >= 69507u), any(vec3<bool>(true, true, true))));
    let var_2 = Struct_1(global1.a);
    global0 = array<vec2<i32>, 17>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global3.x)), -1592f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-global1.a);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2125f, _wgslsmith_f_op_f32(func_3(var_0)))))))));
    return Struct_1(~firstTrailingBit(select(-2147483647i, 1i, false)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2())));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 5u)] * global2[_wgslsmith_index_u32(0u, 5u)])))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f), -1544f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
}

fn func_1() -> vec2<bool> {
    return !vec2<bool>(func_4(func_2(), ~32683u & (35490u & u_input.e)), true);
}

fn func_5(arg_0: bool) -> u32 {
    global2 = array<f32, 5>();
    global2 = array<f32, 5>();
    let var_0 = func_2();
    var var_1 = false;
    var_1 = true;
    return ~select(~30934u, ~1u, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(4294967295u, firstLeadingBit(firstLeadingBit(max(~20645u, _wgslsmith_mult_u32(u_input.b, 15796u)))));
    let var_1 = func_5(all(func_1()));
    var var_2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, var_0, 39593u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(16278u, var_1, u_input.e, 4294967295u), vec4<u32>(53963u, 5897u, u_input.b, var_1), vec4<u32>(6135u, 0u, u_input.e, 4294967295u))), select(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(16586u, var_0, u_input.b), vec3<u32>(4294967295u, 59958u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 29019u, var_0), countOneBits(vec3<u32>(var_1, 69762u, 52545u)))), var_1, any(vec3<bool>(true, true, all(vec2<bool>(true, true))))), _wgslsmith_dot_vec4_u32(~select(~vec4<u32>(22365u, u_input.b, 46484u, u_input.b), ~vec4<u32>(1u, 4294967295u, u_input.e, var_0), true), ~reverseBits(vec4<u32>(u_input.e, var_0, 58238u, var_0) << (vec4<u32>(var_0, 16538u, var_1, var_0) % vec4<u32>(32u)))), 0u);
    let var_3 = ~vec3<u32>(~(~59088u), var_2.x, abs(0u));
    var_2 = reverseBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(52359u, 1u, 1u, var_2.x))), ~abs(vec4<u32>(1u, var_2.x, 1u, var_0))) >> (vec4<u32>(countOneBits(4294967295u), max(~var_3.x, ~var_1), var_1, var_0) % vec4<u32>(32u)));
    var_2 = ~vec4<u32>(var_3.x ^ var_0, abs(firstLeadingBit(select(69102u, 0u, true))), var_3.x, reverseBits(4294967295u));
    let var_4 = func_2();
    let var_5 = Struct_1(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(42202u, countOneBits(var_0), u_input.b));
}

