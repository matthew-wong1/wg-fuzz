struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, true, true, true, true, false, true, true, true, true, false, true, false, true, true, false, true, false, false);

var<private> global1: array<bool, 10>;

var<private> global2: array<bool, 7>;

var<private> global3: bool;

var<private> global4: array<bool, 22> = array<bool, 22>(false, true, true, true, false, true, true, true, true, false, true, false, false, false, false, false, false, true, true, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global2 = array<bool, 7>();
    var var_0 = arg_3.a.x;
    global1 = array<bool, 10>();
    let var_1 = ~u_input.d;
    var var_2 = arg_1;
    return 4294967295u;
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    return arg_2.a;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = arg_2;
    global2 = array<bool, 7>();
    let var_1 = ~(-(u_input.b >> (1883u % 32u)));
    var_0 = Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(u_input.c, 1u, var_0.b.x)), 19u)], var_1 <= ~_wgslsmith_mod_i32(-25719i, -8378i), false && global0[_wgslsmith_index_u32(122529u, 19u)], false), _wgslsmith_add_vec4_u32(arg_2.b, vec4<u32>(0u, u_input.c, 1u, u_input.c) ^ countOneBits(vec4<u32>(1u, 1u, 14232u, 4294967295u))) >> (~select(~var_0.b, _wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(1042u, var_0.b.x, 4294967295u, 1806u)), !global0[_wgslsmith_index_u32(u_input.d.x, 19u)]) % vec4<u32>(32u)));
    global4 = array<bool, 22>();
    return vec3<f32>(-1416f, -532f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f + -1317f) + -116f)))));
}

fn func_2() -> f32 {
    global3 = !(min(abs(firstTrailingBit(19855u)), ~(~1u)) < 139993u);
    var var_0 = global4[_wgslsmith_index_u32(~(~(~74770u)), 22u)];
    global2 = array<bool, 7>();
    let var_1 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(!select(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 10u)], true)), !global2[_wgslsmith_index_u32(4294967295u, 7u)], all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(0u, 10u)]))), 0i, Struct_1(func_3(!global4[_wgslsmith_index_u32(u_input.c, 22u)], select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], global2[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(u_input.d.x, 10u)], global4[_wgslsmith_index_u32(33704u, 22u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_1, 7u)], global2[_wgslsmith_index_u32(u_input.c, 7u)], true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(27995u, 10u)], true)), Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(36322u, 7u)], true, global0[_wgslsmith_index_u32(u_input.c, 19u)]), u_input.d), 1u), vec4<u32>(firstLeadingBit(1u), 1u, 29389u, reverseBits(var_1))))) * vec3<f32>(-303f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, -848f)))) * -914f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2558f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + -2263f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.a.x | -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(23480i, u_input.b, 0i, u_input.b)), -vec4<i32>(u_input.b, 1324i, u_input.b, 2147483647i)));
    global1 = array<bool, 10>();
    var var_1 = Struct_2(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-486f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1535f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-203f, -1000f)))));
    let var_2 = Struct_2(vec2<i32>(-6296i, _wgslsmith_sub_i32(var_0, select(-1i, -31982i, true))) ^ var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.b)))))));
    let var_3 = var_2;
    global3 = any(!select(!select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 19u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 19u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 7u)])), vec2<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(14815u, 22u)], true)), u_input.d.x != 1u), vec2<bool>(global0[_wgslsmith_index_u32(func_1(vec3<bool>(global0[_wgslsmith_index_u32(75842u, 19u)], global2[_wgslsmith_index_u32(17040u, 7u)], true), var_1.b, u_input.d.xw, Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(35573u, 7u)], true, global4[_wgslsmith_index_u32(u_input.c, 22u)], false), u_input.d)), 19u)], global4[_wgslsmith_index_u32(u_input.c, 22u)] | global0[_wgslsmith_index_u32(1u, 19u)])));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + -1945f)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.b)))));
    var var_5 = _wgslsmith_f_op_f32(var_1.b + var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, 27382u, u_input.d.x, ~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)));
}

