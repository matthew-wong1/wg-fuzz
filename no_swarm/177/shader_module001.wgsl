struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 25>;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(7357u, 0u, 1u), vec3<u32>(37167u, 23271u, 32833u), vec3<u32>(41343u, 90766u, 10489u), vec3<u32>(76609u, 1u, 0u), vec3<u32>(23071u, 0u, 0u), vec3<u32>(0u, 1u, 3263u), vec3<u32>(35307u, 51472u, 10483u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    let var_0 = -global1[_wgslsmith_index_u32(~u_input.a.x, 25u)];
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1438f, -156f, -728f, 821f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, -1167f, 710f, -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(694f, 688f, 467f, -677f) + vec4<f32>(419f, -672f, -1314f, -1000f)))), _wgslsmith_div_u32(u_input.a.x, u_input.a.x | 1u), vec3<i32>(global1[_wgslsmith_index_u32(abs(u_input.a.x), 25u)], reverseBits(global1[_wgslsmith_index_u32(4294967295u, 25u)] << (u_input.a.x % 32u)), 2147483647i)), ~(-vec2<i32>(abs(26777i), 0i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(var_1.a.a.xw - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(var_1.a.a.x + var_1.a.a.x)), var_1.a.a.x, false)), _wgslsmith_f_op_f32(-var_1.a.a.x)));
    global0 = select(1u, ~(u_input.a.x >> (firstTrailingBit(u_input.a.x) % 32u)), true);
    let var_3 = var_1;
    return ~6376i;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, -519f, 1455f, -576f))) * vec4<f32>(-290f, -464f, _wgslsmith_f_op_f32(f32(-1f) * -327f), -263f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -119f), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-847f))))))), 70542u, -_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(arg_1, 1786i, global1[_wgslsmith_index_u32(4294967295u, 25u)])) << (_wgslsmith_mult_vec3_u32(vec3<u32>(56285u, u_input.a.x, 37291u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % vec3<u32>(32u)), ~select(vec3<i32>(arg_1, 6323i, 21471i), vec3<i32>(arg_1, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), arg_0)));
    global0 = u_input.a.x;
    var var_2 = -1i;
    let var_3 = func_3(!vec4<bool>(arg_2 & true, arg_0, true, true)) >> (44754u % 32u);
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-(~global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_sub_i32(-1i, -2165i), select(1i, -2147483647i, arg_0)), vec3<i32>(global1[_wgslsmith_index_u32(select(1u, 32849u, true), 25u)], firstLeadingBit(arg_1), -2147483647i) >> (u_input.a % vec3<u32>(32u))), max(1i, 0i));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-158f, arg_1.a.a.x, arg_1.a.a.x), arg_1.a.a.yxx))))));
    global0 = arg_0;
    var var_1 = -vec4<i32>(global1[_wgslsmith_index_u32(abs(arg_1.a.b), 25u)] & func_2(true, min(arg_1.a.c.x, arg_1.b.x), all(vec2<bool>(false, true)), Struct_3(true)), _wgslsmith_dot_vec4_i32(vec4<i32>(31977i, select(11320i, global1[_wgslsmith_index_u32(arg_0, 25u)], true), arg_1.b.x, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(64804i, arg_1.a.c.x, -23696i, 1i), vec4<i32>(arg_1.a.c.x, 47622i, arg_1.a.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])) & vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 25u)], arg_1.b.x, arg_1.b.x, -53020i)), ~(global1[_wgslsmith_index_u32(arg_0, 25u)] >> (arg_0 % 32u)) | _wgslsmith_add_i32(global1[_wgslsmith_index_u32(~1u, 25u)], func_3(vec4<bool>(true, true, true, true))), _wgslsmith_mod_i32(arg_1.a.c.x << ((u_input.a.x & 0u) % 32u), (i32(-1i) * -2147483647i) & ~global1[_wgslsmith_index_u32(arg_1.a.b, 25u)]));
    var_1 = vec4<i32>(-var_1.x, -38607i, -1i, ~reverseBits(10134i));
    var var_2 = ~reverseBits(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, arg_0, u_input.a.x), vec3<u32>(1u, arg_1.a.b, arg_1.a.b), vec3<bool>(true, false, false)), global2[_wgslsmith_index_u32(15922u, 7u)])) ^ global2[_wgslsmith_index_u32(arg_1.a.b, 7u)];
    return abs(max(abs(vec4<u32>(60200u, arg_1.a.b, var_2.x, 1u)) >> (select(min(vec4<u32>(arg_0, var_2.x, arg_0, arg_1.a.b), vec4<u32>(var_2.x, u_input.a.x, 0u, 4294967295u)), vec4<u32>(1u, 1u, var_2.x, arg_0) | vec4<u32>(arg_0, arg_1.a.b, 0u, arg_0), true) % vec4<u32>(32u)), vec4<u32>(~var_2.x, 0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.x), vec2<u32>(20374u, u_input.a.x)), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(reverseBits(abs(0u)), u_input.a.x, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(func_1(max(1u, 45963u), Struct_2(Struct_1(vec4<f32>(-1253f, -346f, 587f, -1865f), 5581u, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(75315u, 25u)], global1[_wgslsmith_index_u32(35343u, 25u)])), vec2<i32>(0i, 6786i))), ~max(vec4<u32>(u_input.a.x, 28658u, u_input.a.x, 77060u), vec4<u32>(u_input.a.x, 1u, 10555u, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, _wgslsmith_f_op_f32(min(1034f, 1807f)), _wgslsmith_f_op_f32(-1047f * 166f), _wgslsmith_div_f32(-234f, 241f))), vec4<f32>(_wgslsmith_div_f32(2448f, _wgslsmith_f_op_f32(step(904f, -396f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-259f)) - _wgslsmith_f_op_f32(sign(-1011f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1512f + 358f) * -979f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(664f, 1238f))), !any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(-597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f + 1000f) * -431f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1439f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2017f, 1000f), _wgslsmith_f_op_f32(ceil(1528f))))))), ~_wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(23154u, 7u)], vec3<u32>(4294967295u, u_input.a.x, 43298u)) <= u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.xwz));
    let var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-561f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - 294f), var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1790f * var_1.x), _wgslsmith_f_op_f32(var_1.x + var_2.x))), ~_wgslsmith_add_u32(4294967295u, countOneBits(0u)), vec3<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), 9210i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_add_vec2_i32(firstLeadingBit(-(~vec2<i32>(global1[_wgslsmith_index_u32(47542u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))), _wgslsmith_add_vec2_i32(select(vec2<i32>(50464i, global1[_wgslsmith_index_u32(6965u, 25u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 18341i), vec2<bool>(false, false)), firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], -29979i))) | vec2<i32>(~20788i, -global1[_wgslsmith_index_u32(u_input.a.x, 25u)])));
    var var_4 = abs(countOneBits(23188u));
    var var_5 = 1u;
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-var_6.a.c.x, abs(countOneBits(-2147483647i)) << (countOneBits(func_1(var_3.a.b, var_3).x) % 32u), global1[_wgslsmith_index_u32(4294967295u, 25u)], 26865i));
}

