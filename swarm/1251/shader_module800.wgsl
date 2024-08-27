struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, -3225f, -469f, -114f);

var<private> global1: array<f32, 5>;

var<private> global2: array<i32, 15>;

var<private> global3: array<u32, 22>;

var<private> global4: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global1 = array<f32, 5>();
    global1 = array<f32, 5>();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_div_f32(1000f, -1329f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.c.x, 22u)], 5u)] - -797f) + _wgslsmith_f_op_f32(arg_1.x - -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f) + _wgslsmith_div_f32(arg_1.x, -955f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 22u)], 5u)]))) - global1[_wgslsmith_index_u32(~max(50285u, global3[_wgslsmith_index_u32(arg_0.c.x, 22u)]), 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3220f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global1 = array<f32, 5>();
    let var_0 = ~(~arg_0.c.zy);
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-arg_1.d);
    var var_0 = u_input.a.zz;
    global4 = vec2<u32>(arg_2.e, max(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, arg_0), _wgslsmith_mult_u32(u_input.e, arg_0)), 0u));
    let var_1 = 1000f;
    var var_2 = arg_2;
    return ~_wgslsmith_clamp_vec4_u32(~(max(arg_1.c, arg_2.c) >> ((vec4<u32>(1u, 54005u, arg_2.c.x, global3[_wgslsmith_index_u32(1u, 22u)]) << (vec4<u32>(4255u, global3[_wgslsmith_index_u32(8165u, 22u)], arg_1.e, global3[_wgslsmith_index_u32(arg_2.c.x, 22u)]) % vec4<u32>(32u))) % vec4<u32>(32u))), firstTrailingBit(arg_1.c), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 81159u), 5u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-954f, global1[_wgslsmith_index_u32(global4.x, 5u)]), 586f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~global4.x, 5u)] * global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global4.x), 5u)]))));
    let var_1 = Struct_1(vec4<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(firstTrailingBit(u_input.d), 2147483647i), 1i, -1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(35491i, global2[_wgslsmith_index_u32(1u, 15u)], u_input.b, global2[_wgslsmith_index_u32(6605u, 15u)]), var_0.wz, vec4<u32>(92632u, 1u, u_input.e, 12937u), vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(global4.x, 5u)], 162f, -2278f), u_input.e), var_0))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27346u, 5u)])), var_0.ww), ~select(vec4<u32>(u_input.e, global4.x, 4294967295u, 1u), vec4<u32>(global4.x, u_input.e, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 22u)], 22u)], global4.x), vec4<bool>(false, false, true, true)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(26194u, 72395u, 39839u, global3[_wgslsmith_index_u32(50938u, 22u)]) ^ vec4<u32>(0u, 2128u, 16247u, global3[_wgslsmith_index_u32(u_input.e, 22u)]), func_2(0u, Struct_1(u_input.a, vec2<f32>(-961f, -363f), vec4<u32>(u_input.e, 42417u, global4.x, global3[_wgslsmith_index_u32(4294967295u, 22u)]), var_0, 28407u), Struct_1(u_input.a, var_0.xw, vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13688u, 22u)], 22u)], u_input.e, 57280u, 1u), var_0, global3[_wgslsmith_index_u32(u_input.e, 22u)])) | (vec4<u32>(4294967295u, 33174u, 29562u, u_input.e) | vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 22u)], 33908u, 1u))), var_0, ~(~16883u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec3<f32>(561f, 1f, -1183f));
}

