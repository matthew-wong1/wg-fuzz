struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-43835i, 2365i, -109374i, 1i, 2147483647i, 18810i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 1481f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-707f)))), _wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, -387f, -725f, arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 660f, _wgslsmith_f_op_f32(floor(-512f)), _wgslsmith_f_op_f32(f32(-1f) * -1303f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 757f, _wgslsmith_f_op_f32(max(arg_0.x, -1526f)), _wgslsmith_f_op_f32(ceil(365f)))))), select(vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, arg_2.a.x), arg_2.a.x)), arg_2.a.x, arg_2.a.x, false), !vec4<bool>(62988u > u_input.a, true, true, true), select(select(!vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x), !vec4<bool>(arg_2.a.x, true, true, false), !vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x)), select(vec4<bool>(true, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), false), all(vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x))))));
    var var_1 = any(!arg_2.a.yy);
    var var_2 = arg_2.a.x;
    return vec4<i32>(0i, u_input.c, i32(-1i) * -32477i, -28919i);
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = Struct_2(vec3<i32>(arg_0.a, 1i, global0[_wgslsmith_index_u32(min(u_input.a, u_input.a), 7u)]), Struct_1(!vec3<bool>(true, all(vec2<bool>(false, false)), true), u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-16152i, u_input.c, u_input.d)), vec3<i32>(56566i, global0[_wgslsmith_index_u32(1873u, 7u)], 0i)), ~reverseBits(vec3<i32>(arg_0.a, u_input.b, 2147483647i)))));
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(max(vec4<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 7u)], -1i), vec4<i32>(var_0.a.x, 44236i, var_0.b.c, u_input.c) << (vec4<u32>(u_input.a, u_input.a, 17853u, 0u) % vec4<u32>(32u)))), func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1321f, -1428f, 1830f), vec3<f32>(-630f, 701f, 554f))), _wgslsmith_mod_vec3_i32(vec3<i32>(-20506i, -2147483647i, 26781i), var_0.a), var_0.b)), firstTrailingBit(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, u_input.c, var_0.a.x, var_0.b.c) >> (vec4<u32>(u_input.a, u_input.a, 32004u, u_input.a) % vec4<u32>(32u))), min(vec4<i32>(var_0.b.b, 888i, 11151i, arg_0.a), vec4<i32>(u_input.d, var_0.a.x, 0i, 1i) & vec4<i32>(2147483647i, u_input.b, 46875i, 1i)))));
    var_1 = vec4<i32>(global0[_wgslsmith_index_u32(~(~u_input.a), 7u)], -(~(_wgslsmith_sub_i32(0i, 0i) & -u_input.d)), var_1.x, 1i);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -434f);
    global0 = array<i32, 7>();
    return var_0.a.zz;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> f32 {
    global0 = array<i32, 7>();
    var var_0 = -func_2(arg_2);
    let var_1 = ~_wgslsmith_dot_vec4_i32(abs((vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 7u)], -74128i, -1i) ^ vec4<i32>(-62738i, 50417i, arg_2.a, 20088i)) | min(vec4<i32>(27767i, -3087i, 1i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 7u)], 2147483647i, var_0.x, var_0.x))), -vec4<i32>(-1i, u_input.d, global0[_wgslsmith_index_u32(~u_input.a, 7u)], -2147483647i));
    let var_2 = arg_2;
    var var_3 = Struct_1(vec3<bool>(true, all(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), all(vec3<bool>(false, any(vec4<bool>(true, false, true, true)), false))), global0[_wgslsmith_index_u32(~1u, 7u)], var_2.a);
    return _wgslsmith_f_op_f32(-arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(27578u, 1u)), 0u) > _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, 17769u, max(1u, u_input.a)), vec3<u32>(1u, 1u, 0u)), true, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(4294967295u, 1f, Struct_4(0i))) * 980f);
    let var_2 = true;
    var var_3 = Struct_1(!select(vec3<bool>(any(vec4<bool>(var_2, false, false, true)), 22476u < u_input.a, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, var_2, true), vec3<bool>(var_2, var_2, var_2), var_2)), -17924i, 31535i & _wgslsmith_sub_i32(u_input.d, max(global0[_wgslsmith_index_u32(0u, 7u)] & u_input.c, -1088i)));
    var var_4 = vec3<bool>(!any(vec3<bool>(true, var_2 & true, u_input.a <= 1u)), any(var_3.a.zz), ~countOneBits(~27946u) == u_input.a);
    let var_5 = reverseBits(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), ~(vec4<u32>(1u, 5461u, u_input.a, 21706u) & vec4<u32>(4294967295u, 15618u, 13391u, 104663u))) | ~(~vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)));
    let var_6 = select(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(var_5.x, 7u)]), vec2<i32>(-1i) * -vec2<i32>(var_3.b, -23065i)), _wgslsmith_div_i32(u_input.c, -var_3.c), ~reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(87382u, 46705u), 7u)]), _wgslsmith_mult_i32(-68256i, func_2(Struct_4(u_input.d)).x)), select(-vec4<i32>(56544i, var_3.b, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(34140u, 7u)], -7431i), u_input.c), select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.c, u_input.c, var_3.b, u_input.b), vec4<i32>(var_3.b, global0[_wgslsmith_index_u32(u_input.a, 7u)], -1i, global0[_wgslsmith_index_u32(844u, 7u)])) | vec4<i32>(1i, -15774i, u_input.d, global0[_wgslsmith_index_u32(35869u, 7u)]), func_3(_wgslsmith_div_vec3_f32(vec3<f32>(538f, 613f, -1599f), vec3<f32>(1528f, 2401f, -1210f)), firstLeadingBit(vec3<i32>(u_input.c, 0i, -14369i)), Struct_1(var_3.a, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 7u)])), var_2), vec4<bool>(true, var_3.b == -2147483647i, firstLeadingBit(var_3.c) < -global0[_wgslsmith_index_u32(var_5.x, 7u)], var_3.a.x)), all(select(vec4<bool>(true, var_4.x, any(vec3<bool>(var_2, true, var_4.x)), true), select(!vec4<bool>(false, var_3.a.x, var_4.x, var_3.a.x), select(vec4<bool>(var_2, false, var_3.a.x, true), vec4<bool>(var_4.x, var_2, false, var_2), vec4<bool>(var_4.x, false, var_2, false)), !var_3.a.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_6.x), abs(~vec2<u32>(39630u, 1u) >> ((var_5.zx ^ firstLeadingBit(var_5.zy)) % vec2<u32>(32u))), var_6, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-180f, 1690f, 790f, -1677f))))), _wgslsmith_div_f32(-903f, -1760f));
}

