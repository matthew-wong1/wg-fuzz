struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 3>;

var<private> global2: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 103023u, 88090u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_dot_vec2_u32(arg_0.zw, vec2<u32>(47604u, 2152u)) % 32u), 3u)])), global0.b, -firstTrailingBit(global0.c));
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(33223u, 3u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1436f, global1[_wgslsmith_index_u32(arg_0.x, 3u)], -387f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -1790f, 1141f) * vec3<f32>(228f, global0.a, 520f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b)) + global0.b)) * _wgslsmith_f_op_vec3_f32(abs(global0.b))), ~_wgslsmith_add_vec4_i32(global0.c >> (arg_0 % vec4<u32>(32u)), global0.c) ^ _wgslsmith_mult_vec4_i32(global0.c, select(global0.c, -vec4<i32>(-55965i, u_input.b.x, u_input.b.x, 1i), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false))));
    var var_1 = var_0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(arg_0.x, arg_0.x)), 3u)]) - _wgslsmith_f_op_f32(f32(-1f) * -752f)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))))), -571f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -576f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1154f, var_0.a))))), vec4<i32>(~select(_wgslsmith_div_i32(global0.c.x, var_0.c.x), 1i, all(vec4<bool>(true, false, true, false))), var_0.c.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 0i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(43189i, 1i, global0.c.x, u_input.b.x), vec4<i32>(-40697i, -56362i, -2147483647i, global0.c.x))), ~0i), -var_0.c.x << (~u_input.c % 32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1173f, _wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, global1[_wgslsmith_index_u32(arg_0.x, 3u)]), vec2<f32>(global0.b.x, 1000f)), var_0.b.xx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.b.zy))))) + _wgslsmith_f_op_vec2_f32(abs(var_2.b.xz)));
    return !(!vec3<bool>(select(true, any(vec3<bool>(false, true, true)), any(vec2<bool>(false, false))), true, true));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.c.x, abs(global0.c.x)), u_input.b.x) >> (67415u % 32u);
    var var_1 = -235f;
    let var_2 = Struct_1(global0.a, global0.b, -min(global0.c ^ global0.c, global0.c));
    let var_3 = var_2;
    let var_4 = any(select(!vec3<bool>(true, u_input.c > 1u, false), func_3(~(~vec4<u32>(4294967295u, 14908u, u_input.d, 4294967295u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(max(290f, _wgslsmith_f_op_f32(-661f - _wgslsmith_f_op_f32(686f + global0.b.x)))), all(vec4<bool>(var_4 & var_4, var_4 && false, any(vec3<bool>(var_4, true, var_4)), false)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec3<u32>, 1>();
    let var_0 = Struct_1(arg_2.a, vec3<f32>(-817f, global0.b.x, _wgslsmith_f_op_f32(func_2(-(global0.c.x ^ 2147483647i)))), min(firstTrailingBit(select(~arg_0.c, -arg_2.c, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), abs(_wgslsmith_div_vec4_i32(arg_0.c, arg_0.c))));
    var var_1 = Struct_1(1503f, vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(708f)))), -1000f), _wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.b.x, -13439i, false), 2147483647i, max(2147483647i, -1i), min(arg_0.c.x, -8117i)) | max(~vec4<i32>(1i, 29790i, var_0.c.x, -2147483647i), var_0.c), -arg_0.c));
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2139f))))))), vec3<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(812f - _wgslsmith_f_op_f32(f32(-1f) * -624f))), -342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - global0.b.x))), _wgslsmith_add_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(arg_0.c, vec4<i32>(var_1.c.x, 0i, 6088i, global0.c.x), global0.c)), var_0.c | vec4<i32>(arg_0.c.x, ~0i, ~arg_2.c.x, -1i)));
    global2 = array<vec3<u32>, 1>();
    return var_0;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global1 = array<f32, 3>();
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(19697i)), _wgslsmith_f_op_f32(-700f - -583f))), arg_0.yyz, min(min(global0.c, select(global0.c, global0.c, vec4<bool>(false, false, false, false))), max(global0.c, vec4<i32>(-2478i, -9344i, -2147483647i, global0.c.x) >> (vec4<u32>(u_input.d, 64348u, u_input.d, u_input.a) % vec4<u32>(32u))))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.a, 66414u, u_input.a), vec4<u32>(1u, 0u, u_input.a, u_input.c)), _wgslsmith_div_u32(u_input.a, 85977u)) | _wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(u_input.a, 1u)], vec3<u32>(0u, u_input.d, u_input.a)), u_input.c >> (u_input.a % 32u)), Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.xxy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.zyx), vec3<f32>(-1412f, 565f, global0.a), vec3<bool>(true, false, false))), vec3<bool>(true, all(vec2<bool>(false, true)), true))), _wgslsmith_sub_vec4_i32(global0.c, global0.c)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1598f, arg_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(41337u, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1547f)))));
    let var_2 = reverseBits(~(-7306i)) & ((0i << (countOneBits(~3295u) % 32u)) >> (_wgslsmith_div_u32(u_input.c, ~_wgslsmith_mult_u32(24253u, u_input.a)) % 32u));
    let var_3 = -584f;
    return ~_wgslsmith_sub_u32(u_input.c, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(u_input.c >> (0u % 32u), _wgslsmith_mult_u32(21888u, ~u_input.c) << (func_1(vec4<f32>(global0.b.x, global0.a, global0.b.x, -1000f)) % 32u)), u_input.a, u_input.d);
    global2 = array<vec3<u32>, 1>();
    var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, var_0.x, 68140u, u_input.a) << (vec4<u32>(var_0.x, 7932u, u_input.c, 4294967295u) % vec4<u32>(32u)))), ~abs(countOneBits(vec4<u32>(4294967295u, 15484u, u_input.c, 16924u)))), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(u_input.c, 1u)], global2[_wgslsmith_index_u32(var_0.x, 1u)])), vec3<u32>(53043u, ~func_1(vec4<f32>(global1[_wgslsmith_index_u32(16932u, 3u)], 418f, 1307f, global0.b.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.zz, var_0.xy), vec2<u32>(u_input.a, 4294967295u)))), var_0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 3u)]) + 2123f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.b)) + vec3<f32>(-1125f, global1[_wgslsmith_index_u32(5384u, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)])))), global0.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)]), var_1.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 3u)] - -854f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, 1781f, var_1.b.x))))));
    var var_3 = vec2<u32>(u_input.c, firstLeadingBit(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.d, 1u)], abs(vec3<u32>(var_0.x, 0u, 1u))) | 1u));
    var var_4 = func_4(func_4(func_4(func_4(var_1, var_0.yy, func_4(var_1, var_0.zy, var_1)), ~var_0.yy, var_1), var_0.xy, func_4(func_4(Struct_1(315f, vec3<f32>(2309f, -470f, var_2.x), global0.c), _wgslsmith_div_vec2_u32(var_0.xx, vec2<u32>(var_0.x, 1u)), func_4(Struct_1(var_2.x, vec3<f32>(1758f, global1[_wgslsmith_index_u32(0u, 3u)], 1720f), var_1.c), vec2<u32>(4294967295u, var_3.x), var_1)), var_0.xy, var_1)), vec2<u32>(u_input.d ^ 103590u, ~5186u), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)) - _wgslsmith_f_op_f32(-var_4.a)), 1009f));
}

