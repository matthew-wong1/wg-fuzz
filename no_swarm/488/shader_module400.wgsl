struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<bool, 31>;

var<private> global2: array<u32, 25> = array<u32, 25>(27681u, 0u, 34727u, 1u, 50996u, 0u, 1u, 0u, 23511u, 0u, 16282u, 66330u, 74485u, 4294967295u, 4294967295u, 95009u, 4294967295u, 2126u, 0u, 50353u, 0u, 1u, 58224u, 4294967295u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global2 = array<u32, 25>();
    global2 = array<u32, 25>();
    var var_0 = firstTrailingBit(1u);
    var_0 = 69451u;
    global2 = array<u32, 25>();
    return 1u;
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    global2 = array<u32, 25>();
    global0 = array<vec4<u32>, 21>();
    global0 = array<vec4<u32>, 21>();
    let var_0 = ~firstTrailingBit(firstLeadingBit(24020u));
    var var_1 = true;
    return abs(func_3());
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_div_i32(~0i, arg_1.b.x);
    global0 = array<vec4<u32>, 21>();
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 1013f, arg_0.x, -1449f) * vec4<f32>(arg_0.x, 1905f, arg_0.x, arg_0.x)))), vec4<f32>(891f, _wgslsmith_f_op_f32(ceil(561f)), -1470f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, 643f, arg_0.x, -1214f) * vec4<f32>(-1000f, -190f, 557f, 1188f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, arg_0.x, arg_0.x, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, arg_0.x, -416f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1433f))))), vec4<bool>(global1[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_f32(exp2(arg_0.x)), var_1 ^ var_1), 31u)], arg_0.x != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x)))), !(!(16926u > u_input.b)), all(vec4<bool>(true, true, true, true)))));
    let var_3 = vec4<bool>(all(!vec4<bool>(!global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9412u, 25u)], 31u)], any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(85974u, 31u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 25u)], var_0, u_input.b, arg_1.a), vec4<u32>(23569u, 34773u, 1u, 1u)), 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])), global1[_wgslsmith_index_u32(~(~(u_input.a ^ 0u) ^ 13452u), 31u)], all(vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])), any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], false, false)))), global1[_wgslsmith_index_u32((arg_1.a >> (((global2[_wgslsmith_index_u32(29087u, 25u)] << (u_input.b % 32u)) | 10165u) % 32u)) >> (var_0 % 32u), 31u)]);
    return Struct_1(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(var_0, u_input.a), global2[_wgslsmith_index_u32(0u, 25u)]) << (_wgslsmith_clamp_u32(~50698u, arg_1.a, ~1u) % 32u), arg_1.b);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    global0 = array<vec4<u32>, 21>();
    let var_2 = ~_wgslsmith_sub_vec4_i32(var_0.a, reverseBits(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -56224i, var_0.b.b.x), vec4<i32>(var_1.b.b.x, 11674i, 2147483647i, 1i), var_0.a))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, 1047f, -1381f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 109f, 1273f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(707f, -1000f, -2260f), vec3<f32>(-1043f, -1082f, 136f))) + vec3<f32>(1f, 530f, -2015f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-531f, 1000f, 254f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-705f, -405f, 501f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1011f, 1000f, 1660f), vec3<f32>(-346f, 1907f, -251f)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 25>();
    let var_0 = func_4(Struct_2(select(min(-vec4<i32>(26663i, u_input.c, u_input.d.x, 0i), vec4<i32>(u_input.c, u_input.c, 22196i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 1i, -2147483647i, 39271i) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(29619u, 25u)], u_input.b, 66387u) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.d.x, 7102i, u_input.d.x)), false), func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1004f, 2351f, 228f), vec3<f32>(1629f, 592f, 556f)))), Struct_1(abs(86777u), vec3<i32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)))), Struct_1(global2[_wgslsmith_index_u32(abs(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4322u, 25u)], 25u)]), 25u)], select(vec3<i32>(u_input.d.x, u_input.c, u_input.d.x), -vec3<i32>(-23725i, u_input.c, 1i), global1[_wgslsmith_index_u32(4294967295u, 31u)]))));
    var var_1 = !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -302f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-135f)))) - 415f));
    var var_2 = func_4(Struct_2(vec4<i32>(-8506i, _wgslsmith_sub_i32(u_input.c, 15926i), max(-2147483647i, var_0.c.b.x), firstTrailingBit(u_input.d.x)) >> ((_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.a, 25u)], 21u)], global0[_wgslsmith_index_u32(6792u, 21u)]) & firstLeadingBit(vec4<u32>(9410u, global2[_wgslsmith_index_u32(var_0.c.a, 25u)], 0u, var_0.c.a))) % vec4<u32>(32u)), var_0.c, func_4(var_0).b)).b;
    var var_3 = -vec2<i32>(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(-5368i, var_0.c.b.x, u_input.d.x, var_2.b.x)), select(var_0.a, var_0.a, vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.a, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(var_0.c.a, 31u)], true)) ^ (var_0.a << (vec4<u32>(14784u, 23467u, 1u, global2[_wgslsmith_index_u32(4294967295u, 25u)]) % vec4<u32>(32u)))), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec2<i32>(select(-25505i, -29358i, all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], false, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]))), -35713i));
}

