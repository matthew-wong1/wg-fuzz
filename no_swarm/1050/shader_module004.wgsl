struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(1000f, 572f, 1304f, -1465f, -1595f, 1000f, -1245f, 777f, -166f, 2367f, 164f, -682f, -529f, -538f, -1535f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(31524u, 15u)], global0[_wgslsmith_index_u32(50266u, 15u)]))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(247f, _wgslsmith_div_f32(312f, _wgslsmith_div_f32(1808f, arg_2)))));
    global0 = array<f32, 15>();
    var var_1 = arg_1 ^ arg_1;
    let var_2 = firstLeadingBit(reverseBits(_wgslsmith_div_vec2_u32(reverseBits(~arg_1), u_input.d)));
    let var_3 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-17955i), firstTrailingBit(-1236i)), reverseBits(vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(41567i, -8262i), vec2<i32>(u_input.b, u_input.b))), abs(vec2<i32>(2147483647i, -u_input.b))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 692f, _wgslsmith_f_op_f32(-1147f + 486f), -2229f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-652f, -751f, arg_2, -676f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2387f, -637f, var_0.x, global0[_wgslsmith_index_u32(var_1.x, 15u)]), vec4<f32>(-1402f, global0[_wgslsmith_index_u32(var_2.x, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], -272f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, arg_2, -100f, global0[_wgslsmith_index_u32(4294967295u, 15u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, -633f, 589f, var_0.x) + vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 15u)], global0[_wgslsmith_index_u32(36019u, 15u)], -746f, 106f))), select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 1541f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1879f), -1892f)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<f32>) -> i32 {
    global0 = array<f32, 15>();
    let var_0 = Struct_1(select(~(vec2<i32>(-14899i, u_input.b) << (~vec2<u32>(11897u, u_input.a) % vec2<u32>(32u))), -(~vec2<i32>(-2147483647i, u_input.b)), vec2<bool>(true, true)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~0u, 15u)], -1135f, _wgslsmith_f_op_f32(sign(-1259f)), arg_2.x), _wgslsmith_f_op_vec4_f32(func_3(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(arg_1.yz, vec2<u32>(u_input.c, 0u), vec2<bool>(true, false)), _wgslsmith_f_op_f32(-892f * 463f)))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.x, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - global0[_wgslsmith_index_u32(u_input.a, 15u)]) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1504f - arg_2.x))), _wgslsmith_f_op_f32(round(1902f)))));
    global0 = array<f32, 15>();
    return -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b, firstLeadingBit(u_input.b), _wgslsmith_add_i32(var_1.a.x, u_input.b)), min(-vec3<i32>(u_input.b, var_0.a.x, 21101i), ~vec3<i32>(var_0.a.x, u_input.b, var_1.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> f32 {
    var var_0 = arg_1.yyw;
    var var_1 = -select(vec2<i32>(select(arg_0.a.x, u_input.b, false) | func_2(arg_2, vec3<u32>(6152u, 0u, var_0.x), vec3<f32>(global0[_wgslsmith_index_u32(arg_1.x, 15u)], 588f, -1375f)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b, -76950i), _wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(1i, u_input.b)))), vec2<i32>(~(arg_0.a.x & u_input.b), func_2(_wgslsmith_f_op_f32(arg_2 - -2046f), arg_1.xxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(31075u, 15u)], global0[_wgslsmith_index_u32(20017u, 15u)], 637f)))), vec2<bool>(true, any(vec2<bool>(true, false))));
    global0 = array<f32, 15>();
    var_1 = -abs(arg_0.a);
    let var_2 = Struct_1(~(abs(abs(vec2<i32>(arg_0.a.x, arg_0.a.x))) << ((~vec2<u32>(u_input.c, u_input.d.x) << (var_0.zy % vec2<u32>(32u))) % vec2<u32>(32u))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(u_input.b, -(~u_input.b)) | vec2<i32>(_wgslsmith_div_i32(abs(u_input.b), 25244i), -30031i));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_0.a), vec4<u32>(1u, u_input.c, u_input.a, 33043u), global0[_wgslsmith_index_u32(4294967295u, 15u)]))), -396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(14018u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)])) * _wgslsmith_f_op_f32(1307f - -1264f))), vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(abs(u_input.d.x), 15u)], global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(4599u, 15u)])), global0[_wgslsmith_index_u32(1u, 15u)])) + vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c, u_input.c), 15u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1058f, 295f)), _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(u_input.a, 15u)])), 3589f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(678f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 15u)])))));
    var var_2 = ~vec4<u32>(min(~0u, abs(0u)), u_input.a, u_input.d.x, _wgslsmith_dot_vec2_u32(~u_input.d, ~vec2<u32>(u_input.c, u_input.d.x))) & min(~reverseBits(~vec4<u32>(u_input.a, 0u, u_input.c, u_input.a)), ~(vec4<u32>(36482u, 1u, u_input.c, u_input.c) | vec4<u32>(u_input.d.x, 1u, u_input.a, u_input.d.x)) << (vec4<u32>(abs(u_input.c), u_input.d.x, u_input.d.x, u_input.c) % vec4<u32>(32u)));
    let var_3 = reverseBits(countOneBits(vec2<i32>(~(var_0.a.x | u_input.b), ~(-23113i))));
    let var_4 = true;
    var var_5 = 2061f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.x, -2147483647i), vec2<i32>(39715i, var_0.a.x) ^ var_3), -vec2<i32>(32055i, -1i)), _wgslsmith_mult_vec2_i32((var_0.a >> (u_input.d % vec2<u32>(32u))) << (u_input.d % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), var_0.a)))), ((_wgslsmith_dot_vec2_u32(u_input.d, u_input.d) | ~u_input.d.x) | _wgslsmith_div_u32(67499u, 1u ^ u_input.d.x)) & countOneBits(~0u), -26503i, -min(vec4<i32>(var_0.a.x, -32358i, ~var_3.x, 2319i), firstTrailingBit(vec4<i32>(u_input.b, var_3.x, var_3.x, -40126i)) & (vec4<i32>(u_input.b, var_0.a.x, 0i, -16623i) ^ vec4<i32>(u_input.b, 41701i, 2147483647i, u_input.b))), min(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, var_3.x, u_input.b), vec3<i32>(-2147483647i, u_input.b, var_0.a.x)), vec3<i32>(2147483647i, 1i, var_3.x))), firstTrailingBit(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.x, var_3.x, 16614i), vec3<i32>(var_0.a.x, -20956i, u_input.b)))));
}

