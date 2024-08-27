struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(5800i, 1i, -31006i), vec3<i32>(-1i, 6541i, 44948i), vec3<i32>(-17360i, -35655i, i32(-2147483648)), vec3<i32>(16306i, 43829i, -20240i), vec3<i32>(-6637i, 24365i, -23516i), vec3<i32>(-35291i, 67357i, -1663i), vec3<i32>(33589i, -1i, 1i), vec3<i32>(0i, 12962i, -22374i), vec3<i32>(27735i, 2147483647i, 1i), vec3<i32>(11104i, 2147483647i, 16123i), vec3<i32>(-9583i, 1i, 42253i));

var<private> global1: array<vec2<i32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = array<vec2<i32>, 15>();
    global0 = array<vec3<i32>, 11>();
    var var_0 = Struct_1(arg_3.a, arg_0.wzy);
    var var_1 = arg_3;
    var var_2 = firstTrailingBit(vec2<i32>(-1i, ~2147483647i << (0u % 32u)));
    return 1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(40921i, 28643i), ~global1[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(~u_input.b, 15u)], min(vec2<i32>(2147483647i, -44841i), global1[_wgslsmith_index_u32(13026u, 15u)]))), ~_wgslsmith_sub_vec2_i32(select(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)], vec2<bool>(arg_1.x, false)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(48149u, 49149u), 15u)]), select(arg_1.xz, vec2<bool>(any(arg_1), all(arg_1)), vec2<bool>(true, true))), vec2<i32>(i32(-1i) * -reverseBits(-54013i), func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-510f, -303f, arg_0.x, arg_0.x), vec4<f32>(925f, -196f, arg_0.x, var_0))))), !select(arg_1.xx, arg_1.yy, vec2<bool>(arg_1.x, arg_1.x)), true, Struct_1(~vec4<u32>(1041u, u_input.c.x, u_input.c.x, 4294967295u), _wgslsmith_f_op_vec3_f32(-arg_0)))));
    global1 = array<vec2<i32>, 15>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -834f) * _wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 - -1805f))))));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0)))))));
    return Struct_1(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b, 2870u, 4294967295u, u_input.a), vec4<u32>(u_input.c.x, u_input.a, u_input.b, u_input.b), arg_1.x), vec4<u32>(42696u, 4294967295u, 4294967295u, 5008u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(1281f, arg_0.x, 618f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    global1 = array<vec2<i32>, 15>();
    global1 = array<vec2<i32>, 15>();
    global1 = array<vec2<i32>, 15>();
    var var_0 = true;
    var var_1 = func_2(arg_1.b, select(select(vec3<bool>(all(vec3<bool>(false, true, false)), true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true), true), false));
    return vec2<i32>(abs(-_wgslsmith_add_i32(2147483647i, -1i)), firstTrailingBit(0i) | 0i);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(func_4(0u, func_2(arg_1.b, select(!vec3<bool>(arg_3, false, false), vec3<bool>(arg_3, true, false), vec3<bool>(true, true, true)))), firstLeadingBit(arg_2.yx));
    var var_1 = reverseBits(arg_1.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.b.xx), vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))))));
    let var_3 = firstTrailingBit(var_0.x);
    var var_4 = vec4<u32>(21903u, 0u, ~4294967295u, 0u);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = arg_1;
    global1 = array<vec2<i32>, 15>();
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-33359i, abs(arg_2.x), ~1i << ((var_0.a.x << (1u % 32u)) % 32u), 1i), _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -1i), vec4<i32>(-31921i, arg_2.x, arg_2.x, i32(-1i) * -1i))), vec4<i32>(-1i) * -vec4<i32>(~arg_2.x, 2147483647i, _wgslsmith_sub_i32(-3139i, arg_2.x), -2147483647i));
    var var_2 = !select(vec2<bool>((arg_1.b.x != -1223f) || true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, false))));
    global1 = array<vec2<i32>, 15>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1044f, _wgslsmith_f_op_f32(1285f - arg_0.b.x))) + _wgslsmith_f_op_f32(floor(-675f)))), -998f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(func_1(~10819u, Struct_1(vec4<u32>(4294967295u, u_input.a, u_input.c.x, u_input.a), vec3<f32>(905f, -730f, -806f)), vec4<i32>(1i, 1i, 1i, 1i), true), func_2(vec3<f32>(158f, -2366f, 1270f), vec3<bool>(true, true, false)), vec3<i32>(1i, -1i, reverseBits(12027i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -226f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1536f, -424f) + vec2<f32>(1000f, -781f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-250f, 599f), vec2<f32>(1000f, 2558f))))))))));
    var var_1 = Struct_1(~abs(vec4<u32>(u_input.c.x, u_input.b << (1u % 32u), u_input.b, 1u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(202f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), -206f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + _wgslsmith_div_f32(var_0.x, var_0.x))))));
    global1 = array<vec2<i32>, 15>();
    var var_2 = var_1.b.x;
    let var_3 = select(select(vec3<bool>(_wgslsmith_add_u32(u_input.c.x, u_input.a) > max(18015u, u_input.a), true, false), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), true), vec3<bool>(1i < abs(firstTrailingBit(17345i)), true, (-180f == _wgslsmith_f_op_f32(abs(var_1.b.x))) && any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), all(vec2<bool>(true || all(vec4<bool>(true, false, false, false)), false)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)) + -803f), var_1.b.x, _wgslsmith_f_op_f32(floor(var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_5(func_2(var_1.b, var_3), func_1(u_input.c.x, Struct_1(vec4<u32>(u_input.c.x, 49953u, 64614u, var_1.a.x), var_1.b), vec4<i32>(1i, 457i, 580i, 22134i), true), max(vec3<i32>(-7420i, 49958i, 39196i), vec3<i32>(-8130i, 10258i, -1i)))).x, _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(max(-142f, var_4.x))))), -428f, -445f), var_0.x, -176f, _wgslsmith_div_i32(abs(-1i), 1i));
}

