struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1504f, -1183f, -1000f, -1000f));

var<private> global2: array<f32, 24> = array<f32, 24>(550f, -391f, 820f, 1275f, 1012f, 1000f, 241f, 413f, -433f, 838f, 1000f, 1517f, -190f, 641f, -666f, -622f, 566f, -171f, 364f, -2331f, -667f, -1051f, -1111f, 645f);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(-617f, -1264f, 719f, -681f)), Struct_1(vec4<f32>(-1004f, -787f, -1471f, 1000f)), Struct_1(vec4<f32>(695f, 1080f, -1090f, -1000f)), Struct_1(vec4<f32>(893f, 966f, 1000f, -372f)), Struct_1(vec4<f32>(-598f, -418f, -156f, 191f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    global2 = array<f32, 24>();
    let var_0 = 1u;
    var var_1 = vec4<i32>(-2147483647i, _wgslsmith_mult_i32(0i, arg_1.x), _wgslsmith_add_i32(-1i, -1i), _wgslsmith_div_i32(~(arg_1.x | 37091i), arg_1.x >> (arg_2 % 32u)) | ~(-_wgslsmith_div_i32(1i, 36936i)));
    let var_2 = global3[_wgslsmith_index_u32(abs(u_input.a), 5u)];
    let var_3 = _wgslsmith_add_u32(select(reverseBits(_wgslsmith_clamp_u32(select(74451u, u_input.a, true), ~4294967295u, _wgslsmith_mod_u32(1u, u_input.a))), firstLeadingBit(var_0), true), 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) * _wgslsmith_f_op_f32(max(1794f, _wgslsmith_f_op_f32(arg_0 + var_2.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: i32) -> vec3<f32> {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(arg_1, arg_0.a, vec4<bool>(true, false, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(483f, arg_0.a.x, -190f, 1523f), vec4<f32>(arg_1.x, global0.a.x, global2[_wgslsmith_index_u32(u_input.a, 24u)], 753f), false)) - _wgslsmith_f_op_vec4_f32(-arg_0.a)), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, false)))));
    global3 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(global0.a.yxx, vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_0.a.x), 371f)));
    var var_1 = vec2<u32>(1u, 46424u);
    global2 = array<f32, 24>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.zxy, global1.a.xxz, true)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 24u)], 2252f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(arg_2.x - arg_0.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(15310i, -4010i, 11183i, -7989i), vec4<i32>(2147483647i, arg_3, arg_3, -33656i)), 36167u))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<i32> {
    global1 = arg_0;
    let var_0 = arg_0;
    let var_1 = ~max(~(~(vec3<u32>(0u, u_input.a, u_input.a) >> (vec3<u32>(31625u, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(1u, u_input.a, u_input.a))), vec3<u32>(u_input.a, reverseBits(u_input.a), 76972u)));
    global3 = array<Struct_1, 5>();
    global1 = Struct_1(global0.a);
    return select(~vec2<i32>(max(~(-3664i), -18365i), countOneBits(57898i)), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(47048i, 16631i), vec2<i32>(-1i, 0i)), 1i)), any(vec2<bool>(true, var_1.x <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 47841u, u_input.a, var_1.x), vec4<u32>(var_1.x, 26837u, 5021u, u_input.a)))));
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f - -715f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * -1830f), -1000f))), global2[_wgslsmith_index_u32(max(u_input.a, _wgslsmith_clamp_u32(0u, u_input.a, 4294967295u) & u_input.a), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 24u)]) - _wgslsmith_f_op_f32(floor(global0.a.x)))), _wgslsmith_f_op_f32(abs(1259f))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~u_input.a, 24u)]))), global0.a.x, 1f, _wgslsmith_f_op_f32(f32(-1f) * -222f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(firstTrailingBit(_wgslsmith_mult_i32(select(1i, 0i, false), -2147483647i)) >= -abs(~19879i));
    var var_1 = global3[_wgslsmith_index_u32(45915u, 5u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global2[_wgslsmith_index_u32(3780u, 24u)]) * vec2<f32>(-2608f, var_1.a.x))) * _wgslsmith_f_op_vec2_f32(-var_1.a.xw)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(global0.a.ww))))), var_1.a.yz));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-227f, global0.a.x, _wgslsmith_f_op_f32(abs(-482f)), var_2.x)))));
    var var_3 = func_4(-func_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a & u_input.a, 4294967295u ^ u_input.a), 5u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<f32>(-1260f, var_2.x, global0.a.x, 1400f)), global0.a, global1.a.wy, -30760i))))));
    let var_4 = global3[_wgslsmith_index_u32(~1u, 5u)];
    var var_5 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, true, false)), true, true)));
    var var_6 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(30411u), min(11734u >> (u_input.a % 32u), reverseBits(u_input.a))), 5u)];
    var_1 = Struct_1(vec4<f32>(-1245f, _wgslsmith_f_op_f32(floor(765f)), global2[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-2020f, 827f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(5517i, ~(~(vec3<u32>(50190u, 0u, u_input.a) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1010u), vec3<u32>(77837u, u_input.a, u_input.a), vec3<u32>(u_input.a, 17290u, u_input.a)) % vec3<u32>(32u)))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(79552u, ~0u), ~firstTrailingBit(vec2<u32>(u_input.a, 1429u))), countOneBits(~(~0u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-14972i, 107435i), ~vec2<i32>(1i, 0i)), i32(-1i) * -51419i), countOneBits(_wgslsmith_dot_vec4_i32(max(vec4<i32>(29004i, 5717i, -14655i, 46546i), vec4<i32>(-2147483647i, -1i, 1i, 25339i)), reverseBits(vec4<i32>(-1i, 2147483647i, -41067i, 1i))))));
}

