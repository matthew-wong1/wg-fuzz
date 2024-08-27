struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(75603u, 29473u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 41124u, 59151u), vec3<u32>(25014u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(30026u, 4294967295u, 10949u), vec3<u32>(30617u, 4294967295u, 51603u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1612u, 25997u, 53896u), vec3<u32>(1u, 8111u, 20028u), vec3<u32>(15194u, 0u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(42613u, 548u, 2921u), vec3<u32>(45245u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 30066u), vec3<u32>(26824u, 24589u, 0u), vec3<u32>(9219u, 1u, 2005u), vec3<u32>(52883u, 31751u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 0u, 94250u), vec3<u32>(41440u, 16233u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(15378u, 0u, 4294967295u), vec3<u32>(0u, 0u, 15200u), vec3<u32>(19845u, 1u, 2045u), vec3<u32>(51631u, 1u, 1u), vec3<u32>(4294967295u, 19039u, 795u), vec3<u32>(4294967295u, 53723u, 1u));

var<private> global1: array<bool, 26> = array<bool, 26>(false, true, false, true, true, false, true, true, false, true, false, false, true, true, false, true, true, true, true, true, false, false, true, false, true, false);

var<private> global2: vec2<bool>;

var<private> global3: Struct_1;

var<private> global4: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = global2.x;
    let var_1 = Struct_3(2314f);
    var var_2 = Struct_1(arg_1.xx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f - arg_0.x)) * global3.b))), true);
    var var_3 = u_input.a;
    var var_4 = var_1;
    return vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1328f, _wgslsmith_f_op_f32(max(-982f, arg_0.x))))), -796f)), 453f);
}

fn func_2(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, -328f, global3.a.x) * vec3<f32>(arg_0.a.a, global3.b, arg_0.a.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1814f, global3.a.x, -926f, arg_0.a.a) * vec4<f32>(1000f, 947f, 232f, 730f)))))), -1404f, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))) - _wgslsmith_f_op_f32(step(1308f, arg_0.a.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, -826f, -1333f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, global3.a.x, -825f)) + vec3<f32>(arg_0.a.a, 1103f, arg_0.a.a)))), firstTrailingBit(vec2<i32>(~_wgslsmith_add_i32(0i, u_input.a.x), _wgslsmith_sub_i32(0i, u_input.a.x))));
    let var_1 = var_0.a.c;
    let var_2 = _wgslsmith_div_vec3_u32(~(~(~reverseBits(global0[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(0u, 44832u), ~0u, ~(~0u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(0u, 28u)], vec3<u32>(0u, 47601u, 0u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 82325u), global0[_wgslsmith_index_u32(1u, 28u)]) % vec3<u32>(32u)))));
    var var_3 = 2147483647i;
    let var_4 = firstTrailingBit(~(~_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(41290u << (var_2.x % 32u), 28u)], ~var_2)));
    return !(!vec4<bool>(any(!vec3<bool>(true, var_0.a.c, global2.x)), !(441f <= var_0.a.b), false, true));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = vec2<bool>(any(select(!func_2(Struct_4(Struct_3(1000f))), !vec4<bool>(false, global3.c, false, global3.c), !func_2(Struct_4(Struct_3(global3.a.x))))), true);
    var var_1 = Struct_1(global3.a, _wgslsmith_f_op_f32(max(global3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2489f), _wgslsmith_f_op_f32(floor(global3.b))))), global3.c);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a - _wgslsmith_f_op_vec2_f32(step(var_1.a, global3.a))) * _wgslsmith_f_op_vec2_f32(trunc(global3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global3.a.x)))))), true & (_wgslsmith_f_op_f32(round(-1000f)) == _wgslsmith_f_op_f32(step(145f, global3.b))));
    var var_3 = vec3<bool>(var_0.x, any(!(!(!vec3<bool>(global3.c, true, false)))), select(~(~27522i) < reverseBits(-arg_0.x), global2.x & global2.x, !global1[_wgslsmith_index_u32(1u, 26u)]));
    let var_4 = Struct_1(global3.a, 534f, global1[_wgslsmith_index_u32(~1u, 26u)]);
    return _wgslsmith_f_op_f32(abs(var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    var var_1 = _wgslsmith_f_op_f32(func_1(u_input.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, ~12851i << (_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(3689u, 28u)], ~global0[_wgslsmith_index_u32(41624u, 28u)]) % 32u), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), -vec4<i32>(16368i, 2267i, 1i, 1i)), u_input.a.x), ~(abs(28368u) << (1u % 32u)) >> (max(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(45048u, 55996u, 1u)), 1u) % 32u), -26850i, firstTrailingBit(-u_input.a.wy));
}

