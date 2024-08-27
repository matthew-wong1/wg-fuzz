struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, false, true, true, false, true, false, false, false, true, false, false, true, true, true, false, true, false, true, false, false, true, false, true);

var<private> global1: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec4<f32> {
    var var_0 = !vec2<bool>(true, (_wgslsmith_f_op_f32(step(arg_0.x, 703f)) == _wgslsmith_f_op_f32(arg_0.x + 825f)) && (_wgslsmith_dot_vec3_i32(u_input.d, u_input.d) <= -2147483647i));
    var_0 = select(!select(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1, 24u)])), !vec2<bool>(true, var_0.x), false), vec2<bool>(false, all(!select(vec2<bool>(false, false), vec2<bool>(false, var_0.x), false))), select(!select(vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, u_input.b), 24u)]), vec2<bool>(any(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.e.x, 24u)]))), (u_input.d.x & 57156i) == -2147483647i), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(u_input.b, u_input.b)), 24u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], false, true)))));
    global0 = array<bool, 24>();
    let var_1 = u_input.d.x;
    global1 = !global0[_wgslsmith_index_u32(arg_1, 24u)];
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) - _wgslsmith_f_op_f32(step(arg_0.x, -1316f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -668f)), arg_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1223f, -758f, 719f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-731f, 923f, arg_0.x, 267f))), vec4<f32>(748f, _wgslsmith_f_op_f32(min(arg_0.x, -722f)), -1187f, _wgslsmith_f_op_f32(-1106f - 1112f)), false)), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 24u)], var_0.x, false, global0[_wgslsmith_index_u32(u_input.b, 24u)])))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_3(~(u_input.d.zx << (_wgslsmith_mult_vec2_u32(~u_input.a, u_input.e.xx) % vec2<u32>(32u))), 0u, ~35865u);
    let var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-6668i, _wgslsmith_add_i32(u_input.d.x >> (u_input.a.x % 32u), 1i)), _wgslsmith_div_i32(abs(u_input.d.x) | reverseBits(u_input.d.x), u_input.d.x ^ u_input.d.x)) | firstLeadingBit(_wgslsmith_div_i32(-var_0.a.x, var_0.a.x));
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(-countOneBits(vec4<i32>(34822i, var_0.a.x, 25897i, 2147483647i)), vec4<i32>(0i, -14362i, var_1, -(19402i << (u_input.a.x % 32u)))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(0i, var_1, -31643i, 25237i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 2147483647i), vec4<i32>(2147483647i, -75815i, -1i, 10478i)), countOneBits(vec4<i32>(u_input.d.x, 0i, var_1, -2147483647i)))), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_0.a.x, -26168i), u_input.d), 5358i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.d.x), u_input.d), var_0.a.x >> (32630u % 32u))));
    global1 = false;
    global1 = any(!select(!vec3<bool>(false, arg_0, arg_0), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b, 24u)], true, true), vec3<bool>(arg_0, global0[_wgslsmith_index_u32(var_0.b, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(false, arg_0, arg_0)), !all(vec3<bool>(false, arg_0, arg_0))));
    return !select(vec4<bool>(true && select(arg_0, false, true), arg_0, true, select(arg_0, global0[_wgslsmith_index_u32(~var_0.c, 24u)], all(vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 24u)], global0[_wgslsmith_index_u32(u_input.e.x, 24u)])))), vec4<bool>(!any(vec3<bool>(true, true, true)), false, !(!arg_0), true), !vec4<bool>(!arg_0, arg_0, -35098i > u_input.d.x, true));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_1(vec4<i32>(-1i) * -(~select(vec4<i32>(1i, u_input.d.x, 2147483647i, -19880i), vec4<i32>(7567i, arg_0, -42459i, 2147483647i), true)));
    let var_1 = func_4(any(arg_3.yz), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1227f, -1000f, -1030f, 659f) - vec4<f32>(arg_1, -748f, -519f, arg_1)), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-1000f, arg_1, 1511f, arg_1), u_input.e.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 495f)));
    let var_2 = Struct_1(vec4<i32>(-2147483647i, u_input.d.x, select(0i, var_0.a.x, !arg_3.x), -33050i));
    let var_3 = Struct_2((vec2<i32>(var_0.a.x, -14155i) | -(var_2.a.yz | vec2<i32>(var_0.a.x, arg_0))) | -(~u_input.d.xy), arg_1, vec3<u32>(~u_input.a.x, u_input.a.x, 88083u));
    var_0 = var_2;
    return var_3.b;
}

fn func_1() -> f32 {
    let var_0 = firstLeadingBit(abs(vec3<i32>(-u_input.d.x, 26096i, u_input.d.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1305f, -269f) * _wgslsmith_f_op_f32(ceil(1071f)))), 518f));
    let var_2 = -_wgslsmith_mult_i32(~(~var_0.x), u_input.d.x);
    global0 = array<bool, 24>();
    global1 = false;
    return _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(-28078i, 18449i), var_1.x, ~_wgslsmith_mult_u32(abs(u_input.a.x), ~4294967295u) != 0u, !(!vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(40819u, u_input.b), 24u)], true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.b, ~(~0u));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), 1f));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(min(reverseBits(~(-45264i)), _wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, 31119i))), u_input.d.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-16762i, 37654i, -38695i, -2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, -1i, 1i), !global0[_wgslsmith_index_u32(34990u, 24u)]), vec4<i32>(_wgslsmith_mult_i32(-24299i, u_input.d.x), select(-1i, 1i, false), 0i, i32(-1i) * -8635i)), countOneBits(1i)), abs(vec4<i32>(-firstTrailingBit(u_input.d.x), select(~14343i, abs(13923i), true), u_input.d.x, -2147483647i)));
    let var_3 = vec2<i32>(-8270i, max(1499i, select(u_input.d.x, 13378i, global0[_wgslsmith_index_u32(var_0.x, 24u)] & all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], false)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1199f, var_1) - _wgslsmith_f_op_f32(-var_1));
    var var_5 = any(!vec4<bool>(!all(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], true)), global0[_wgslsmith_index_u32(var_0.x, 24u)], true, func_4(global0[_wgslsmith_index_u32(114517u, 24u)] && global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 642f, var_1, var_1) - vec4<f32>(var_1, -1834f, var_1, var_1)), var_1).x));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_vec2_u32(vec2<u32>(66804u, var_0.x), abs(u_input.a)) & _wgslsmith_div_vec2_u32(~u_input.e.xx, u_input.a)));
}

