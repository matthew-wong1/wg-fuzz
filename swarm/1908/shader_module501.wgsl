struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<u32, 5>;

var<private> global3: array<f32, 2> = array<f32, 2>(-296f, -537f);

var<private> global4: array<vec4<u32>, 19>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global3 = array<f32, 2>();
    let var_0 = -1000f;
    global0 = !all(!(!(!vec3<bool>(false, true, arg_0.x))));
    global3 = array<f32, 2>();
    let var_1 = -2147483647i;
    return 1u;
}

fn func_2() -> bool {
    global3 = array<f32, 2>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 5u)], 47945u), 2u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -582f)) + -1000f)), -415f, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(~(~u_input.d), 2u)]));
    var var_1 = vec4<u32>(25129u, ~4294967295u, func_3(vec4<bool>(false, true, select(true, global2[_wgslsmith_index_u32(0u, 5u)] == u_input.b, true), true)), u_input.b);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zw)))) * var_0.yw));
    global2 = array<u32, 5>();
    return true;
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_1(false);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 2u)]) - global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 0u), 2u)]));
    var var_2 = (~reverseBits(2147483647i << (u_input.b % 32u)) << (4294967295u % 32u)) << (firstTrailingBit(u_input.b) % 32u);
    let var_3 = Struct_1(func_2());
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1093f, 917f) * vec2<f32>(var_1, 258f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(972f, arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a >= u_input.a;
    var var_0 = 4294967295u;
    var var_1 = func_1(792f);
    let var_2 = !vec4<bool>(true, false, !select(all(vec3<bool>(false, true, false)), true, true), false);
    let var_3 = !(!any(select(var_2.wyw, vec3<bool>(true, true, var_2.x), vec3<bool>(false, var_2.x, var_2.x)))) & ((-1i | _wgslsmith_add_i32(u_input.a, min(2147483647i, -4892i))) <= (-(-76281i & u_input.a) & 30786i));
    let var_4 = global2[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)];
    var var_5 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
    let var_6 = firstLeadingBit(firstLeadingBit(-(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, ~_wgslsmith_sub_i32(abs(538i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_6.x, 0i, -59041i), vec4<i32>(var_6.x, u_input.a, 16609i, var_6.x)))));
}

