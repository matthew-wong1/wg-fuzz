struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(15889u, 69980u, 13532u), vec3<u32>(30524u, 19775u, 61819u), vec3<u32>(42178u, 0u, 0u), vec3<u32>(29016u, 0u, 25400u), vec3<u32>(1u, 8827u, 0u), vec3<u32>(21326u, 39642u, 5463u), vec3<u32>(1260u, 0u, 4294967295u), vec3<u32>(0u, 14032u, 0u));

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: Struct_1;

var<private> global4: array<i32, 29> = array<i32, 29>(0i, 10150i, 26280i, -1i, 24391i, 0i, i32(-2147483648), 1i, 27931i, 36714i, 15253i, 20622i, 2147483647i, i32(-2147483648), 0i, i32(-2147483648), 48689i, 0i, 35965i, 4256i, 0i, 0i, i32(-2147483648), -1i, 21906i, 1i, 18433i, 1i, i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = -743f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-550f + -1201f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-695f - -842f)))));
    var var_1 = vec2<u32>(45106u ^ countOneBits(u_input.b), u_input.b);
    global0 = array<vec3<u32>, 8>();
    var var_2 = arg_0.a;
    var_2 = vec3<i32>(_wgslsmith_mod_i32(select(_wgslsmith_mod_i32(arg_0.a.x, 7512i), ~(-2147483647i), true), reverseBits(1i)) << (25508u % 32u), _wgslsmith_mult_i32(_wgslsmith_mod_i32(min(var_2.x, 2147483647i), global4[_wgslsmith_index_u32(var_1.x, 29u)]), 2147483647i), _wgslsmith_div_i32(-(~0i), reverseBits(~3464i)));
    return global3.a.x;
}

fn func_1(arg_0: u32, arg_1: f32) -> u32 {
    global2 = global3.a.x;
    let var_0 = Struct_1(vec3<i32>(reverseBits(-1i), global4[_wgslsmith_index_u32(4294967295u, 29u)], global3.a.x));
    global0 = array<vec3<u32>, 8>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(~func_2(Struct_1(global1.a)), ~reverseBits(global4[_wgslsmith_index_u32(4294967295u, 29u)]), ~var_0.a.x), global1.a, vec3<i32>(65275i, global1.a.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.a.x, -1407i), _wgslsmith_add_i32(-2147483647i, global3.a.x)))));
    global2 = var_1.a.x;
    return _wgslsmith_mult_u32(~_wgslsmith_mult_u32(~0u, u_input.b), firstLeadingBit(_wgslsmith_mod_u32(0u, u_input.b)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = -vec2<i32>(global4[_wgslsmith_index_u32((1u >> (u_input.b % 32u)) ^ countOneBits(47385u), 29u)] >> (1u % 32u), u_input.a);
    global4 = array<i32, 29>();
    global4 = array<i32, 29>();
    var var_1 = (!all(vec2<bool>(true, true)) & (true == any(vec3<bool>(true, true, true)))) | false;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f))) + _wgslsmith_f_op_f32(f32(-1f) * -747f)) * _wgslsmith_f_op_f32(f32(-1f) * -393f));
    return _wgslsmith_sub_u32(~arg_0 | ~(~_wgslsmith_mult_u32(0u, arg_0)), firstTrailingBit(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 2799u, arg_0, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, 10153u, arg_0), vec4<u32>(u_input.b, arg_0, u_input.b, 1u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(firstTrailingBit(global1.a));
    let var_0 = reverseBits(abs(u_input.b));
    let var_1 = func_3(func_1(1u, _wgslsmith_f_op_f32(-176f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-984f))))));
    var var_2 = Struct_1(global1.a);
    var_2 = Struct_1(vec3<i32>(~abs(var_2.a.x), 1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, global3.a.x), global1.a.x), -u_input.a >> (~51252u % 32u))));
    global3 = Struct_1(global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1407f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1158f), _wgslsmith_f_op_f32(-1103f * -1072f), any(vec4<bool>(false, false, true, false)))), -1660f, 253f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1801f * 172f), _wgslsmith_f_op_f32(round(-1668f)), _wgslsmith_f_op_f32(f32(-1f) * -205f), -1141f)))), firstLeadingBit(1u), ~vec2<u32>(u_input.b, ~(~4294967295u)), vec4<f32>(-1648f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(754f - _wgslsmith_f_op_f32(sign(1000f))), -1461f)), 539f, _wgslsmith_f_op_f32(f32(-1f) * -791f)), 486f);
}

