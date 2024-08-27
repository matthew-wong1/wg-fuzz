struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<Struct_5, 3>;

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = array<Struct_3, 4>();
    let var_0 = Struct_4(_wgslsmith_sub_vec2_u32(~select(countOneBits(vec2<u32>(80237u, 0u)), min(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], global3[_wgslsmith_index_u32(27242u, 26u)]), vec2<u32>(6844u, global3[_wgslsmith_index_u32(6650u, 26u)])), true), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, global3[_wgslsmith_index_u32(1826u, 26u)]), vec2<u32>(0u, u_input.b))) ^ select(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], 4294967295u), vec2<u32>(31094u, u_input.a), vec2<bool>(true, true))), ~firstTrailingBit(51390u) | 6358u);
    global3 = array<u32, 26>();
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(min(15259i, u_input.c.x << (global3[_wgslsmith_index_u32(17072u, 26u)] % 32u)), 53438i) << (1u % 32u), ~(reverseBits(~0i) & ~_wgslsmith_div_i32(58591i, u_input.d)));
    var var_2 = Struct_3(select(-vec4<i32>(var_1, -207i, -27005i, u_input.c.x), firstLeadingBit(vec4<i32>(-13025i, u_input.c.x, var_1, -2147483647i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -14124i, -2147483647i, 26756i), vec4<i32>(u_input.c.x, 6192i, 2147483647i, u_input.d)), global3[_wgslsmith_index_u32(1u, 26u)] == ~0u) & u_input.c);
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = any(!(!(!vec2<bool>(arg_0.x, true))));
    global0 = array<Struct_3, 4>();
    var var_1 = _wgslsmith_mult_vec2_i32(u_input.c.zw, vec2<i32>(-1i, -2147483647i));
    global3 = array<u32, 26>();
    var var_2 = 1i;
    return _wgslsmith_div_f32(-542f, _wgslsmith_f_op_f32(trunc(-423f)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, func_3(vec3<f32>(-1119f, global2.x, -782f)), true && arg_2, arg_0 > arg_0), !vec4<bool>(arg_1.x, arg_2, true, arg_2), !(!vec4<bool>(arg_2, false, arg_2, arg_2))), Struct_4(min(vec2<u32>(u_input.a, global3[_wgslsmith_index_u32(42236u, 26u)]) ^ vec2<u32>(11995u, 4294967295u), max(vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 26u)], 45047u), vec2<u32>(u_input.b, 0u))), select(~u_input.a, 0u, any(vec3<bool>(true, false, arg_1.x)))), global0[_wgslsmith_index_u32(u_input.b, 4u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(470f + _wgslsmith_f_op_f32(-global2.x))))))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_add_u32(u_input.b, ~(1u ^ u_input.b));
    var var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(6501i, vec2<bool>(false, true), true)))), _wgslsmith_f_op_f32(abs(-349f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1030f, global2.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-479f, 556f) + vec2<f32>(1258f, 1686f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1461f, -450f))))), !vec2<bool>(false, any(vec2<bool>(false, false))))));
    global3 = array<u32, 26>();
    var var_3 = vec4<bool>(!any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)) | any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))) | false, all(vec2<bool>(true, true)));
    return u_input.c.xww;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 4>();
    var var_0 = firstLeadingBit(reverseBits(u_input.c));
    var var_1 = ~func_1();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(391f, -916f, _wgslsmith_f_op_f32(-global2.x)))));
    var var_3 = _wgslsmith_f_op_f32(var_2.x + 1567f);
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~36760u)), var_1.zy, ~global3[_wgslsmith_index_u32((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], 4294967295u, true), 26u)], 26u)] & u_input.a) | countOneBits(~963u), 26u)], -(-2147483647i >> (~(~global3[_wgslsmith_index_u32(37063u, 26u)]) % 32u)), 38727i);
}

