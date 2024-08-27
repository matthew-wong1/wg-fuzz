struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 8>;

var<private> global2: array<vec3<u32>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.a;
    global1 = array<bool, 8>();
    var var_1 = firstTrailingBit(arg_1.b.x);
    var var_2 = ~u_input.c.x;
    var var_3 = Struct_2(arg_1.a, firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(1i, 0i), arg_1.b.x)));
    return arg_0.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_3(arg_1);
    global1 = array<bool, 8>();
    let var_1 = Struct_3(var_0.a);
    var var_2 = Struct_3(var_0.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1739f, -1427f, 538f), vec3<f32>(542f, -398f, 213f)), vec3<f32>(-1920f, 279f, 576f), select(vec3<bool>(global1[_wgslsmith_index_u32(20833u, 8u)], global1[_wgslsmith_index_u32(var_1.a.b, 8u)], true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(61496u, 8u)]), true))) - vec3<f32>(_wgslsmith_f_op_f32(-424f - -1251f), -1076f, _wgslsmith_f_op_f32(f32(-1f) * -540f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, 816f, -381f)))));
    return false;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = u_input.c.x;
    let var_1 = !select(vec2<bool>(func_3(vec2<u32>(u_input.c.x, 0u), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), 43400u, u_input.a, u_input.c.x)) | (u_input.c.x == 12584u), global1[_wgslsmith_index_u32(~u_input.c.x, 8u)] & global1[_wgslsmith_index_u32(~u_input.c.x, 8u)]), select(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(72930u, 8u)])), vec2<bool>(true, u_input.c.x >= u_input.c.x), arg_0 != _wgslsmith_f_op_f32(f32(-1f) * -490f)), !(_wgslsmith_f_op_f32(arg_0 * arg_0) >= _wgslsmith_f_op_f32(arg_0 + arg_0)));
    global0 = true;
    var var_2 = Struct_1(vec3<i32>(min(u_input.a.x ^ (u_input.a.x << (31450u % 32u)), reverseBits(_wgslsmith_mod_i32(u_input.b, -1i))), 64985i, _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.b, 0i, 45493i) ^ vec3<i32>(-1433i, u_input.a.x, u_input.a.x)) << (global2[_wgslsmith_index_u32(u_input.c.x, 21u)] % vec3<u32>(32u)), -min(vec3<i32>(u_input.a.x, -59391i, 37994i), vec3<i32>(11152i, u_input.a.x, u_input.b)))), ~54390u, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(~abs(u_input.a.x), abs(countOneBits(u_input.b)))), select(u_input.c.x, u_input.c.x, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-123f))) + arg_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0)), arg_0))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(countOneBits(min(~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x ^ 4693u, countOneBits(59178u)))), 21u)], Struct_2(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(3188u, 1u), 8u)], !global1[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_add_vec2_i32(~u_input.a & reverseBits(vec2<i32>(-1i, u_input.b)), min(vec2<i32>(u_input.a.x, u_input.b), u_input.a << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u)))))), 8u)];
    global0 = u_input.c.x < (select(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 8u)]) ^ 4294967295u);
    var var_1 = select(!vec3<bool>(all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], false), vec2<bool>(true, false))), false, false), !select(!vec3<bool>(global1[_wgslsmith_index_u32(9524u, 8u)], true, true), vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(10442u, 8u)], global1[_wgslsmith_index_u32(18816u, 8u)], false, true)), u_input.c.x < u_input.c.x, false), global1[_wgslsmith_index_u32(~u_input.c.x << (u_input.c.x % 32u), 8u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(u_input.c.x | ~14444u, 8u)], false));
    global0 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-813f - 1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1493f)), -410f) + 344f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-897f)))), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(u_input.c, ~u_input.c)), select(~countOneBits(u_input.c.x), ~(~select(1u, u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), all(vec2<bool>(var_2.x == -668f, true))), _wgslsmith_add_u32(u_input.c.x | u_input.c.x, ~(~(u_input.c.x << (u_input.c.x % 32u)))), _wgslsmith_mult_vec3_i32(vec3<i32>(~_wgslsmith_sub_i32(1i, 1i), 26494i, u_input.a.x), _wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a.x, 28147i), vec3<i32>(u_input.b, -69865i, -1i))), countOneBits(vec3<i32>(39952i, u_input.a.x, -9338i) | vec3<i32>(-30596i, -2147483647i, -2328i)))));
}

