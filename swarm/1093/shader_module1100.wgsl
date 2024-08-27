struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_sub_u32(reverseBits(arg_1) | arg_1, countOneBits(~min(0u, arg_1)) | ~(~firstTrailingBit(0u)));
    global1 = array<vec3<bool>, 7>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(-435f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))))), Struct_3(117954u <= (_wgslsmith_add_u32(90036u, 0u) & min(arg_1, 4294967295u)), vec3<i32>(1981i, global0[_wgslsmith_index_u32(max(arg_1, arg_1 & arg_1), 20u)], 0i), vec4<f32>(638f, 687f, -585f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f), 873f)), all(global1[_wgslsmith_index_u32(arg_1 >> (1u % 32u), 7u)])), true, vec3<bool>(false, !(!(!arg_0)), false));
    var var_2 = Struct_2((_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(187f * var_1.b.c.x)) < -1000f) && (firstLeadingBit(1i) >= _wgslsmith_dot_vec2_i32(~vec2<i32>(-11068i, var_1.b.b.x), select(var_1.b.b.yz, var_1.b.b.zx, var_1.d.zz))));
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~var_0, ~var_0, countOneBits(arg_1), var_0), ~(~vec4<u32>(4294967295u, arg_1, 49704u, var_0))) ^ ~select(~vec4<u32>(arg_1, arg_1, 92645u, arg_1), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, arg_1, 1u, 9673u), vec4<u32>(arg_1, 4294967295u, 14303u, arg_1)), !vec4<bool>(var_1.c, arg_0, true, true)), ~(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, arg_1, 28802u, 19726u), vec4<u32>(var_0, 16401u, var_0, var_0)), ~vec4<u32>(arg_1, 4294967295u, arg_1, 75632u)) & abs(~vec4<u32>(41523u, 4294967295u, arg_1, 149160u))));
    return true;
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = ~(~((vec2<u32>(2132u, 0u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) >> (firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1474f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(275f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1069f - 439f)))));
    global0 = array<i32, 20>();
    var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(19391u, 20706u, var_0.x), select(1u, 53957u, false)), ~abs(vec2<u32>(4294967295u, var_0.x))) ^ ~abs(~(~vec2<u32>(8596u, var_0.x)));
    var var_2 = Struct_2(var_1.x != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)), var_1.x, false)));
    return 1591f;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = (vec2<i32>(firstTrailingBit(-29705i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29177i, global0[_wgslsmith_index_u32(2736u, 20u)]), -vec2<i32>(47327i, global0[_wgslsmith_index_u32(1u, 20u)]))) & _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 66840i) & vec2<i32>(-34592i, global0[_wgslsmith_index_u32(0u, 20u)]), vec2<i32>(1i, 1i)), max(vec2<i32>(global0[_wgslsmith_index_u32(142804u, 20u)], 33984i), ~vec2<i32>(-3877i, global0[_wgslsmith_index_u32(45712u, 20u)])))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u));
    let var_1 = select(_wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(global0[_wgslsmith_index_u32(43336u, 20u)], -2147483647i, u_input.a, 1688i) ^ vec4<i32>(var_0.x, -1i, global0[_wgslsmith_index_u32(1u, 20u)], -2147483647i))), max(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(-1i, -2147483647i, var_0.x, -2147483647i), vec4<i32>(u_input.a, arg_0, 2147483647i, -11148i)), max(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(0u, 20u)], -1i, 0i), vec4<i32>(2147483647i, u_input.a, 61658i, var_0.x)), abs(vec4<i32>(var_0.x, 1i, arg_0, 0i))), vec4<i32>(abs(u_input.a), -8734i, global0[_wgslsmith_index_u32(~15144u, 20u)], 2147483647i >> (0u % 32u)))), _wgslsmith_add_vec4_i32(vec4<i32>(~36788i, -global0[_wgslsmith_index_u32(~0u, 20u)], max(reverseBits(2147483647i), 1i), ~(~global0[_wgslsmith_index_u32(4294967295u, 20u)])), ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -1i, -16860i, var_0.x), vec4<i32>(-17212i, global0[_wgslsmith_index_u32(1u, 20u)], -57124i, u_input.a)), max(vec4<i32>(var_0.x, 21979i, 50902i, arg_0), vec4<i32>(var_0.x, u_input.a, u_input.a, arg_0)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, false, false)), -1321f > arg_1, all(vec4<bool>(true, true, false, false)), true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global1 = array<vec3<bool>, 7>();
    var var_2 = Struct_3(true, var_1.zwy, vec4<f32>(-1000f, _wgslsmith_div_f32(-1493f, arg_2), arg_1, arg_1), false);
    var_2 = Struct_3(!var_2.d, _wgslsmith_div_vec3_i32(abs(var_2.b), vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~1u, 20u)], var_0.x), -41303i, _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(1u, 20u)], 34950i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(-1491f, _wgslsmith_f_op_f32(abs(-333f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1358f * -825f), -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-269f * var_2.c.x), 1f)), -1312f))), !var_2.a);
    return 1000f;
}

fn func_2(arg_0: vec4<i32>) -> vec4<f32> {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(20403u, ~1u), 0u);
    var var_1 = _wgslsmith_f_op_f32(func_4(u_input.a, _wgslsmith_f_op_f32(-278f - -1258f), _wgslsmith_f_op_f32(3061f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(false))), _wgslsmith_f_op_f32(-854f - _wgslsmith_f_op_f32(floor(360f)))))));
    let var_2 = arg_0.xwx;
    let var_3 = _wgslsmith_f_op_f32(func_4(-62723i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1211f, _wgslsmith_f_op_f32(func_3(Struct_2(true)))))), 104f));
    let var_4 = true;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, _wgslsmith_f_op_f32(-1251f + _wgslsmith_f_op_f32(ceil(-437f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(var_0.x, 20u)], var_3, 1071f))), _wgslsmith_f_op_f32(var_3 * var_3)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(true | (func_1(true, firstTrailingBit(35911u)) || false), vec3<i32>(1i, -52110i, global0[_wgslsmith_index_u32(~4294967295u, 20u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(570f, 1000f, 380f, 723f) * _wgslsmith_div_vec4_f32(vec4<f32>(-210f, 1000f, -1975f, 362f), vec4<f32>(-641f, 635f, 435f, 937f))), _wgslsmith_f_op_vec4_f32(func_2(max(vec4<i32>(-12038i, global0[_wgslsmith_index_u32(1u, 20u)], u_input.a, -2147483647i), vec4<i32>(u_input.a, -18510i, 8140i, 1601i)))))), true);
    var var_1 = vec3<i32>(-(~global0[_wgslsmith_index_u32(82357u, 20u)]), global0[_wgslsmith_index_u32(1u, 20u)], abs(var_0.b.x));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-global0[_wgslsmith_index_u32(~1u, 20u)], 33879i), var_0.b.xy);
    let var_3 = ~25242i;
    let x = u_input.a;
    s_output = StorageBuffer(1002f);
}

