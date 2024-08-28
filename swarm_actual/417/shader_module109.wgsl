struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: array<bool, 18> = array<bool, 18>(true, false, false, true, true, false, false, false, false, false, false, true, true, false, false, false, true, true);

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false));

var<private> global3: array<vec3<u32>, 12>;

var<private> global4: array<bool, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    let var_0 = vec4<bool>(true, all(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), !global2[_wgslsmith_index_u32(18444u, 32u)], 2520u == u_input.a.x)), global1[_wgslsmith_index_u32(~51353u, 18u)], false);
    let var_1 = u_input.a.yx;
    let var_2 = Struct_1(~_wgslsmith_div_u32(~u_input.a.x, ~1u), _wgslsmith_div_i32(~_wgslsmith_div_i32(~1i, i32(-1i) * -2147483647i), 1081i), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-812f * 1000f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(-606f, 241f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(485f * 334f) - _wgslsmith_f_op_f32(f32(-1f) * -1674f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(638f)), _wgslsmith_f_op_f32(round(-484f))))));
    global4 = array<bool, 32>();
    global4 = array<bool, 32>();
    return ~(~countOneBits(select(vec3<i32>(var_2.b, var_2.b, 6451i), vec3<i32>(1i, -1i, var_2.b), vec3<bool>(global4[_wgslsmith_index_u32(0u, 32u)], false, true)) << (vec3<u32>(var_1.x, var_2.a, var_2.a) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<bool>) -> vec3<i32> {
    global0 = array<vec2<i32>, 5>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), 18u)];
    global0 = array<vec2<i32>, 5>();
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~countOneBits(vec3<i32>(-1i, 24058i, 46182i))), func_3()), vec3<i32>(i32(-1i) * -11349i, -_wgslsmith_clamp_i32(~0i, 1i, i32(-1i) * -1i), _wgslsmith_div_i32(1i, countOneBits(1i))));
    return ~(~(~vec3<i32>(var_2.x, _wgslsmith_add_i32(-47101i, var_2.x), 6761i)));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global4 = array<bool, 32>();
    var var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(39602u, u_input.a.x, 18892u), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(u_input.a.x));
    var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x), 1u);
    var var_1 = false;
    global1 = array<bool, 18>();
    return Struct_1(~1u, i32(-1i) * -(~(-arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(231f - 488f), _wgslsmith_f_op_f32(ceil(1995f)), _wgslsmith_f_op_f32(-1922f + -439f), _wgslsmith_f_op_f32(sign(-1149f))) - vec4<f32>(1f, 1f, 1f, 1f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = func_4(-_wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.b, 28603i, arg_0.b), vec3<i32>(var_0.b, var_0.b, 2147483647i), global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<i32>(arg_0.b, arg_0.b, arg_0.b)) | ~firstLeadingBit(func_2(vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))));
    var var_2 = Struct_1(var_1.a >> ((~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u, u_input.a.x), vec3<u32>(var_0.a, u_input.a.x, 0u)) | ~var_1.a) % 32u), _wgslsmith_clamp_i32(1i, -var_1.b, ~_wgslsmith_sub_i32(-1i, 0i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.c.x)), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1259f + -2868f)), -367f), _wgslsmith_f_op_vec4_f32(-var_1.c)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.x)));
    global3 = array<vec3<u32>, 12>();
    return _wgslsmith_mod_u32(1u, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~vec2<u32>(_wgslsmith_div_u32(27486u, u_input.a.x ^ u_input.a.x), ~u_input.a.x), vec2<u32>(func_1(Struct_1(~u_input.a.x, -1i >> (u_input.a.x % 32u), _wgslsmith_div_vec4_f32(vec4<f32>(287f, -740f, -1220f, -222f), vec4<f32>(-1327f, -940f, -1055f, 1000f))), ~u_input.a.zw), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a.x, 29470u), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), u_input.a), func_1(Struct_1(0u, -1i, vec4<f32>(132f, 211f, 821f, 1105f)), u_input.a.zw)) << (1u % 32u), 12u)] << (select(vec3<u32>(3621u, 0u, var_0.x) & u_input.a.xyx, global3[_wgslsmith_index_u32(56565u & _wgslsmith_mod_u32(1u, u_input.a.x), 12u)], global1[_wgslsmith_index_u32(min(0u, var_0.x) << ((u_input.a.x << (u_input.a.x % 32u)) % 32u), 18u)]) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_add_i32(~(-1i), -8347i)), vec2<i32>(-(37168i >> (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec3_i32(min(vec3<i32>(-13447i, 1i, -42162i), vec3<i32>(-1i, 1i, -16418i)), vec3<i32>(1i, 1i, 1i)), ~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -15624i), vec4<i32>(0i, 1i, 2147483647i, 61927i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f - _wgslsmith_f_op_f32(select(-531f, _wgslsmith_f_op_f32(f32(-1f) * -949f), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(629f, 1229f)) + _wgslsmith_f_op_f32(f32(-1f) * -887f)))));
}

