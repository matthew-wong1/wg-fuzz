struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    return Struct_3(_wgslsmith_f_op_f32(753f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a))) + _wgslsmith_f_op_f32(390f + arg_2.a))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> i32 {
    global0 = array<f32, 12>();
    let var_0 = !(!vec4<bool>(true | (arg_3.x <= arg_3.x), !arg_0 || !arg_0, all(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0)), !arg_0 & any(vec2<bool>(arg_0, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.a, arg_2.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-241f, arg_2.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_3.x, 12u)], -1717f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a, -754f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 12u)], 730f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a, 402f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(ceil(336f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -300f))))), !select(select(select(var_0.zx, var_0.zy, false), var_0.xz, any(var_0.wx)), var_0.xx, select(select(var_0.xz, vec2<bool>(true, var_0.x), arg_0), !var_0.yx, all(var_0)))));
    var var_2 = true;
    var_2 = all(select(vec3<bool>(any(var_0), true, _wgslsmith_f_op_f32(min(arg_2.a, -862f)) == var_1.x), vec3<bool>(select(all(vec3<bool>(arg_0, arg_0, true)), any(var_0.wwx), arg_0), !(var_0.x & arg_0), false), !(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(66185u, 12u)])) == _wgslsmith_f_op_f32(f32(-1f) * -836f))));
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2.a)), -489f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -1353f, arg_2.a, global0[_wgslsmith_index_u32(33350u, 12u)]))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, 945f, global0[_wgslsmith_index_u32(63297u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1313f, -837f, arg_2.a, 605f), vec4<f32>(arg_2.a, 425f, arg_0, -491f)))))))));
    let var_1 = u_input.b & -27940i;
    let var_2 = Struct_2(vec3<i32>(-func_3(all(vec2<bool>(true, false)), Struct_3(arg_0), Struct_3(1000f), vec4<u32>(0u, arg_1.x, u_input.a.x, 0u)), -2147483647i, _wgslsmith_div_i32(11857i >> (u_input.a.x % 32u), var_1 << (arg_1.x % 32u)) >> (arg_1.x % 32u)), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false))), countOneBits(_wgslsmith_mod_vec3_i32(min(select(vec3<i32>(-1i, 2147483647i, 28834i), vec3<i32>(var_1, -73480i, 14189i), true), vec3<i32>(-9121i, var_1, -1i)), ~countOneBits(vec3<i32>(-2147483647i, 2147483647i, u_input.b)))));
    let var_3 = var_2;
    let var_4 = 0i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)])) * -1282f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(-2147483647i, u_input.b, 103895i, 1i)) & firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -10792i), vec4<i32>(u_input.b, u_input.b, 27666i, -8996i))), ~(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.b, -28553i, u_input.b)), vec4<i32>(u_input.b, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-1i, -33950i, 37184i) ^ vec3<i32>(0i, 38261i, u_input.b)), u_input.b));
    let var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), ~vec4<u32>(38405u, u_input.a.x, u_input.a.x, u_input.a.x), func_1(54581i, vec2<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), Struct_3(global0[_wgslsmith_index_u32(0u, 12u)]), true)))) <= global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 0u))), 12u)]);
    let var_2 = _wgslsmith_add_vec4_u32(select(vec4<u32>(0u, abs(1u), u_input.a.x, reverseBits(u_input.a.x) ^ _wgslsmith_mult_u32(4294967295u, 1u)), firstTrailingBit(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(0u, u_input.a.x), firstTrailingBit(u_input.a.x), ~45380u)), vec4<bool>(true, true, var_1.x, true)), firstTrailingBit(vec4<u32>(~0u, firstLeadingBit(0u), ~countOneBits(0u), ~firstTrailingBit(u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 12u)]), global0[_wgslsmith_index_u32(56179u, 12u)])));
    var var_4 = Struct_2(var_0.zwz, false, select(-vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.yzy, vec3<i32>(-1i, -4669i, -62620i)), -u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), vec3<i32>(select(~var_0.x, -u_input.b, all(vec2<bool>(true, var_1.x))), var_0.x, -2147483647i), all(!vec3<bool>(false, var_1.x, var_1.x))));
    var var_5 = var_0.x >> ((countOneBits(_wgslsmith_mod_u32(var_2.x, u_input.a.x)) ^ u_input.a.x) % 32u);
    var var_6 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1382f, global0[_wgslsmith_index_u32(0u, 12u)], 1938f, -348f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1207f, var_3.x, var_3.x, -1413f) * vec4<f32>(global0[_wgslsmith_index_u32(32589u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 1000f, global0[_wgslsmith_index_u32(var_2.x, 12u)])))))));
    let var_7 = _wgslsmith_mult_vec4_i32(vec4<i32>(min(firstTrailingBit(u_input.b) << (var_2.x % 32u), firstLeadingBit(abs(var_4.a.x))), ~_wgslsmith_add_i32(~var_4.c.x, 18518i), ~(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(var_4.a.zx << (_wgslsmith_div_vec2_u32(vec2<u32>(23548u, 1u), var_2.xx) % vec2<u32>(32u)), firstLeadingBit(var_4.a.yy) ^ var_0.zy)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -max(var_0.x, var_4.a.x)), var_2 ^ ~(~(~var_2)), _wgslsmith_div_i32(i32(-1i) * -12180i, 62841i));
}

