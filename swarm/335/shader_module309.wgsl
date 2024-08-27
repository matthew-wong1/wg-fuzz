struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1u), Struct_1(44964u), Struct_1(0u), Struct_1(3230u), Struct_1(0u), Struct_1(1u), Struct_1(10372u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(2628u));

var<private> global1: array<bool, 3> = array<bool, 3>(true, false, false);

var<private> global2: array<u32, 26>;

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    var var_0 = !select(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(20112u, 3u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1125u, 26u)], 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 3u)], false, global1[_wgslsmith_index_u32(38654u, 3u)])), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], 3u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39945u, 26u)], 26u)], 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(true, true, true)), vec3<bool>(!global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 26u)], 3u)], true, true == global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(41906u, global2[_wgslsmith_index_u32(75358u, 26u)]), 3u)]), any(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 3u)], false, global1[_wgslsmith_index_u32(59283u, 3u)]), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 3u)], true, true), false)));
    let var_1 = -214f;
    global2 = array<u32, 26>();
    var var_2 = u_input.e.zz;
    let var_3 = ~4294967295u < ~(~global2[_wgslsmith_index_u32(2797u, 26u)]);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_1), -363f, var_1, _wgslsmith_f_op_f32(abs(288f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, var_1, -654f, -106f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-224f, var_1, var_1, var_1))))), any(!(!vec4<bool>(var_0.x, false, var_0.x, true))))), vec4<f32>(-578f, _wgslsmith_f_op_f32(round(-963f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(957f)))))), var_1)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(121f, 1023f, 327f, 1578f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-938f)) - -181f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-128f + -269f)), 425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1562f, -1435f)) + 749f))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~(~1u), ~(49010u >> (u_input.a % 32u))), firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 26u)]), reverseBits(u_input.d.yw)) | 31441u)), 22u)];
    let var_2 = var_0.x;
    var var_3 = global0[_wgslsmith_index_u32(94246u, 11u)];
    var var_4 = ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(16288u, global2[_wgslsmith_index_u32(105269u, 26u)], 15479u, 0u) << ((u_input.e << (vec4<u32>(15793u, u_input.e.x, 4294967295u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~u_input.d);
    return reverseBits(~firstLeadingBit(_wgslsmith_clamp_u32(var_3.a, global2[_wgslsmith_index_u32(0u, 26u)], 0u)) >> (var_1.a % 32u));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> u32 {
    global1 = array<bool, 3>();
    let var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 1u), func_2()), reverseBits(arg_2.a), 1u), _wgslsmith_sub_vec3_u32(u_input.e.yyw, vec3<u32>(~arg_2.a, arg_2.a, firstLeadingBit(0u))));
    var var_1 = global3[_wgslsmith_index_u32((15931u & u_input.e.x) & _wgslsmith_mult_u32(arg_2.a, 1u), 22u)];
    global2 = array<u32, 26>();
    var var_2 = false;
    return u_input.a;
}

fn func_4(arg_0: vec4<u32>) -> bool {
    let var_0 = !(!(!select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(33452u, 3u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 3u)]), true), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), vec2<bool>(true, true))));
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(u_input.a, 1u), 0u), 22u)];
    var var_2 = select(all(!var_0), true, !(!var_0.x));
    let var_3 = true;
    let var_4 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.a, 26u)], 11u)];
    return any(select(vec2<bool>(true, var_0.x), !(!vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 26u)], 3u)], global1[_wgslsmith_index_u32(68043u, 3u)])), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -313f), vec2<f32>(613f, 258f)), vec2<f32>(-1479f, -491f))))));
    let var_1 = !select(func_4(vec4<u32>(9493u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 70776u, u_input.d.x), vec3<u32>(global2[_wgslsmith_index_u32(29751u, 26u)], 8479u, global2[_wgslsmith_index_u32(u_input.e.x, 26u)])), func_1(u_input.b, global2[_wgslsmith_index_u32(1u, 26u)], Struct_1(global2[_wgslsmith_index_u32(u_input.d.x, 26u)])))), true, false);
    let var_2 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 1145f), _wgslsmith_f_op_f32(max(var_0.x, -764f)), _wgslsmith_f_op_f32(max(196f, -1247f)), var_0.x))));
    let var_4 = Struct_1(~(~firstTrailingBit(min(u_input.a, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-245f, 327f), _wgslsmith_f_op_vec3_f32(step(var_3.zzy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_3.wxy)) - _wgslsmith_f_op_vec3_f32(round(var_3.yxy))) + _wgslsmith_f_op_vec3_f32(sign(var_3.wzy))))), u_input.d, firstLeadingBit(vec3<i32>(min(_wgslsmith_mult_i32(u_input.b, 30954i), 0i), ~(u_input.b << (0u % 32u)), _wgslsmith_sub_i32(var_2, _wgslsmith_sub_i32(-1i, u_input.c.x)))), -500f);
}

