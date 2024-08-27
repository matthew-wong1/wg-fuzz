struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<u32>, 29>;

var<private> global2: array<f32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global0 = select(all(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false))), true, true);
    var var_0 = select(vec3<bool>(!(!all(vec4<bool>(true, true, true, true))), true, any(vec3<bool>(true, false, u_input.a.x >= u_input.a.x))), vec3<bool>(true, true, all(vec2<bool>(true, all(vec2<bool>(false, true))))), false);
    var var_1 = ~select(~vec3<i32>(~u_input.b.x, u_input.a.x, u_input.b.x), vec3<i32>(u_input.a.x, -34309i, u_input.b.x), true);
    var var_2 = Struct_1(~min(vec3<u32>(4294967295u, _wgslsmith_mod_u32(arg_0.a.x, u_input.c.x), 4294967295u), arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-373f, -157f, true))));
    var var_3 = vec3<bool>(var_0.x, var_0.x, var_0.x);
    return _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -u_input.b.x >> (arg_1.x % 32u), var_1.x, -9623i), -((vec4<i32>(-1i, 3838i, 0i, 65i) >> (arg_1 % vec4<u32>(32u))) ^ vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)) & reverseBits(vec4<i32>(firstLeadingBit(12553i), -40268i, 0i, -1i)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(func_3(Struct_1(arg_0.a, arg_0.b), ~vec4<u32>(arg_0.a.x, 28582u, u_input.d, 32299u), arg_0, arg_0) & (-vec4<i32>(28140i, u_input.b.x, u_input.a.x, u_input.b.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.x, 0u, u_input.d, 53155u), vec4<u32>(4294967295u, 6813u, 1u, 1u)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(719i, u_input.b.x, 5348i, u_input.b.x), vec4<i32>(~u_input.a.x, ~u_input.b.x, 0i >> (arg_1 % 32u), 0i)), firstTrailingBit(vec4<i32>(-384i, -u_input.a.x, min(0i, u_input.b.x), -44150i))), vec4<i32>(-1i) * -reverseBits(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x))));
    var var_1 = arg_0;
    var var_2 = Struct_1(countOneBits(global1[_wgslsmith_index_u32(u_input.d >> (0u % 32u), 29u)] >> (~arg_0.a % vec3<u32>(32u))) >> (var_1.a % vec3<u32>(32u)), 1342f);
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(-519f * var_2.b)))), 1159f, var_2.b, -307f);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -519f, -752f)) * vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 12u)], -703f, 567f, 942f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 12u)], 2106f, arg_0.b, global2[_wgslsmith_index_u32(70028u, 12u)]) * vec4<f32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)], arg_0.b, global2[_wgslsmith_index_u32(12340u, 12u)]))), vec4<f32>(154f, arg_0.b, arg_0.b, -823f), vec4<bool>(true, true, true, true))), 293f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(32802u, 12u)] - 1394f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 364f, -683f, global2[_wgslsmith_index_u32(u_input.d, 12u)]) * _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<u32>(arg_0.a.x, 1u, 76672u), -854f), arg_0.a.x, vec3<bool>(true, false, false), vec2<bool>(true, false))))))));
    let var_2 = u_input.b.x;
    var var_3 = Struct_1(arg_0.a, -834f);
    var var_4 = select(select(vec3<bool>(true, true, select(true, all(vec2<bool>(true, false)), any(vec3<bool>(false, false, true)))), vec3<bool>(true, all(vec2<bool>(true, true)), (var_3.a.x ^ arg_0.a.x) == _wgslsmith_clamp_u32(56323u, 16716u, u_input.d)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), vec3<bool>(all(vec4<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, false, true, false)), true, true)), !(!all(vec3<bool>(false, true, false))), true), vec3<bool>(any(vec4<bool>(all(vec4<bool>(false, true, true, false)), true, var_3.b == arg_0.b, true)), false, false));
    return abs(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(-47186i, u_input.b.x, 2147483647i))), u_input.a), -1i, -42670i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 29>();
    global0 = select(any(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, false))), false, true);
    let var_0 = u_input.a.x;
    var var_1 = ~_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.d, 21238u, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.d, u_input.d, 38897u, u_input.c.x)), _wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.c.x, u_input.d, 1u, 1218u) ^ vec4<u32>(u_input.d, 29051u, u_input.d, u_input.c.x)), vec4<u32>(1u, abs(34334u), 0u | u_input.d, 4294967295u)));
    global2 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b.x, 1i, -2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -61710i, u_input.b.x, -32600i), vec4<i32>(-2147483647i, 2147483647i, var_0, var_0)), vec4<i32>(-4146i, -42290i, -1i, 23809i))), abs(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0, -1i, var_0, u_input.b.x), func_1(Struct_1(vec3<u32>(16644u, 1u, var_1.x), global2[_wgslsmith_index_u32(79853u, 12u)])))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-1i, 0i, 22531i), func_1(Struct_1(global1[_wgslsmith_index_u32(0u, 29u)], -673f)).x, -4302i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), vec4<i32>(~var_0, _wgslsmith_add_i32(-2147483647i, 2147483647i), var_0, -17386i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_1.x, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(var_1.x, 12u)], 1000f) * vec4<f32>(-615f, 568f, global2[_wgslsmith_index_u32(2550u, 12u)], -890f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 12u)], global2[_wgslsmith_index_u32(u_input.d, 12u)], 575f, global2[_wgslsmith_index_u32(u_input.c.x, 12u)]) + vec4<f32>(-672f, global2[_wgslsmith_index_u32(u_input.c.x, 12u)], -463f, global2[_wgslsmith_index_u32(10026u, 12u)]))) - _wgslsmith_div_vec4_f32(vec4<f32>(1498f, global2[_wgslsmith_index_u32(45u, 12u)], global2[_wgslsmith_index_u32(var_1.x, 12u)], global2[_wgslsmith_index_u32(var_1.x, 12u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 12u)], -802f, global2[_wgslsmith_index_u32(6376u, 12u)], global2[_wgslsmith_index_u32(54051u, 12u)])))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1951f, global2[_wgslsmith_index_u32(u_input.d, 12u)], 1733f, -1122f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], -240f, 1171f) - vec4<f32>(-496f, 577f, global2[_wgslsmith_index_u32(var_1.x, 12u)], global2[_wgslsmith_index_u32(23935u, 12u)]))))), ~61964u, vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(var_1.x, var_1.x), 22035u) ^ var_1.x, 12u)], -1000f, global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.d, _wgslsmith_sub_u32(7810u, var_1.x))), 12u)], _wgslsmith_f_op_f32(ceil(256f))));
}

