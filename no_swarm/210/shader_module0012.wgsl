struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

var<private> global1: array<u32, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(step(331f, 658f));
    global0 = array<vec3<bool>, 8>();
    let var_2 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(~(-2360i), -u_input.a << (~arg_2 % 32u)), -arg_3.a), _wgslsmith_mult_i32(-1i, firstLeadingBit(-arg_3.b) & -62948i), _wgslsmith_mod_u32(~arg_3.c, ~arg_2 >> (26475u % 32u)), -(i32(-1i) * -(u_input.c ^ u_input.b)));
    let var_3 = Struct_1(vec2<i32>(u_input.c, var_2.a.x), arg_3.d, 80329u, select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(select(arg_3.d, var_2.b, arg_0.x), -1i, arg_3.b), -u_input.c), -58175i, arg_0.x));
    return 502f;
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<vec3<bool>, 8>();
    global1 = array<u32, 16>();
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(-7405i, abs(1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a, var_0.a), vec2<i32>(17346i, arg_0.b) >> (vec2<u32>(1u, 16467u) % vec2<u32>(32u))), -arg_0.a.x ^ arg_0.a.x)), 14913i, 34376u, 2147483647i);
    let var_2 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec4<bool>(true, true, true, true), _wgslsmith_add_u32(0u, arg_0.c), arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1629f, -931f, true))))))) - vec2<f32>(1f, 1f));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(2118i, u_input.c), vec2<i32>(2147483647i, u_input.c)), u_input.c | u_input.b, 8953u, firstLeadingBit(u_input.a)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1736f, -974f) * _wgslsmith_f_op_f32(step(1064f, -1000f))), -1143f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(962f, 138f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(309f, -396f), vec2<f32>(-956f, -1001f)), vec2<f32>(1f, 1f)))))));
    var var_1 = Struct_1(abs(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.b), vec3<i32>(7423i, -32849i, -14229i)), i32(-1i) * -1i)), ~(i32(-1i) * -29334i), ~33454u, 1i);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-644f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f + var_0.x));
    global1 = array<u32, 16>();
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6651u, 16u)], 16u)], 0u), abs(vec4<u32>(19145u, 4294967295u, 14672u, 0u))));
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4644u, 0u, 0u), abs(vec3<u32>(4294967295u, 7497u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)]))), _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 16u)], 0u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 25989u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)]))) << (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(13546u, 28277u), abs(vec2<u32>(global1[_wgslsmith_index_u32(8565u, 16u)], 1u))), _wgslsmith_mod_u32(32518u, 73306u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(44678u, 16u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(1u, 16u)]))), 16u)] % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(462f, 2016f, -480f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(620f, -105f, -503f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(640f, 577f, 311f)))));
    var var_3 = vec2<bool>(-(u_input.c | 1i) > -(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 10930i, -35719i), vec3<i32>(15515i, u_input.b, u_input.b))), true);
    global1 = array<u32, 16>();
    var_0 = select(_wgslsmith_div_i32(1i, firstTrailingBit(_wgslsmith_add_i32(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 1i), vec2<i32>(u_input.c, -50245i))))), -80056i, (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1, var_1, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 16u)], 16u)]), vec4<u32>(78576u, global1[_wgslsmith_index_u32(var_1, 16u)], var_1, var_1)), ~vec4<u32>(30088u, 0u, 43443u, 4294967295u)) | abs(var_1)) >= var_1);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u), firstLeadingBit(-17756i), -(-_wgslsmith_mult_vec3_i32(vec3<i32>(12883i, u_input.b, 0i), vec3<i32>(u_input.a, u_input.b, -31478i)) & vec3<i32>(u_input.c, -u_input.a, _wgslsmith_sub_i32(-43722i, u_input.c))));
}

