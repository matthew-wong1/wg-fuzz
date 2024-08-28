struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(false, Struct_1(1000f, 1u, false)), Struct_3(true, Struct_1(-1064f, 0u, false)), Struct_3(true, Struct_1(639f, 1u, false)), Struct_3(false, Struct_1(-800f, 13758u, true)), Struct_3(true, Struct_1(493f, 0u, true)), Struct_3(false, Struct_1(-1510f, 0u, false)), Struct_3(true, Struct_1(-1470f, 50649u, false)), Struct_3(true, Struct_1(-586f, 51174u, false)), Struct_3(true, Struct_1(-1275f, 0u, false)), Struct_3(false, Struct_1(-809f, 57274u, true)), Struct_3(false, Struct_1(697f, 0u, true)), Struct_3(false, Struct_1(1000f, 1u, true)), Struct_3(true, Struct_1(-1086f, 4294967295u, true)), Struct_3(false, Struct_1(762f, 37630u, true)), Struct_3(false, Struct_1(1528f, 0u, false)), Struct_3(false, Struct_1(-315f, 26161u, false)));

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_3, 32>;

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = arg_0.x;
    let var_1 = 1642f;
    global2 = array<Struct_3, 32>();
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    return u_input.b;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, -2011f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1349f, -949f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f + _wgslsmith_f_op_f32(f32(-1f) * -1211f)))), vec2<bool>(arg_1.x, all(!vec3<bool>(arg_1.x, true, true)))));
    let var_1 = Struct_3(arg_1.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), abs(1u), arg_1.x));
    var var_2 = ~1i;
    global1 = array<Struct_1, 17>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a));
    return ~1i;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = u_input.b;
    let var_1 = select(vec2<bool>(true, arg_1.b.c), select(select(select(vec2<bool>(true, true), !vec2<bool>(arg_3.c, arg_3.c), -326f == arg_2.x), select(vec2<bool>(arg_3.c, false), !vec2<bool>(false, arg_1.b.c), u_input.b > 2147483647i), select(select(vec2<bool>(true, false), vec2<bool>(arg_3.c, arg_1.b.c), vec2<bool>(true, false)), !vec2<bool>(false, arg_3.c), any(vec3<bool>(true, false, true)))), vec2<bool>(arg_1.b.c, any(select(vec4<bool>(true, arg_3.c, false, arg_3.c), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_3.c, false, true)))), select(vec2<bool>(any(vec4<bool>(true, true, arg_3.c, false)), true), !vec2<bool>(arg_1.a, arg_3.c), false)), all(vec2<bool>(!(!arg_1.a), all(select(vec4<bool>(arg_3.c, arg_1.a, false, arg_3.c), vec4<bool>(false, false, arg_1.a, arg_3.c), false)))));
    return ~countOneBits(arg_1.b.b) | 1u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, _wgslsmith_add_u32(countOneBits(0u), countOneBits(5004u)))), countOneBits(~vec2<u32>(_wgslsmith_div_u32(5626u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(42886u, 1u, 1u, 0u), vec4<u32>(4294967295u, 1u, 37318u, 0u))))), 17u)];
    let var_1 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, arg_0)) * arg_0));
    let var_2 = global1[_wgslsmith_index_u32(func_4(~abs(~(vec3<u32>(20935u, 1045u, var_0.b) & vec3<u32>(21429u, 0u, 0u))), Struct_3(select(all(!vec2<bool>(var_0.c, true)), !var_0.c, var_1.a >= func_3(u_input.a, vec4<bool>(var_0.c, var_0.c, false, var_0.c))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 11847u, var_0.b), vec4<u32>(var_0.b, 46879u, 37176u, 0u)) >> (abs(0u) % 32u), ~_wgslsmith_clamp_u32(45482u, 47633u, 4294967295u)), 17u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -823f)), global1[_wgslsmith_index_u32(~select(abs(var_0.b), (var_0.b | var_0.b) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(77399u, var_0.b, var_0.b), vec3<u32>(1u, 0u, 4294967295u)), !any(vec3<bool>(var_0.c, true, var_0.c))), 17u)]), 17u)];
    var var_3 = firstLeadingBit(min(19318u, ~reverseBits(var_2.b)));
    global3 = func_1(vec4<u32>(~(~countOneBits(1u)), func_4(vec3<u32>(1u, 69626u, 16857u) & min(vec3<u32>(85246u, var_2.b, var_0.b), vec3<u32>(7708u, 0u, 3109u)), global2[_wgslsmith_index_u32(~var_0.b, 32u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1492f)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 1u), 17u)]), ~var_0.b | 0u, var_2.b));
    return global1[_wgslsmith_index_u32(~var_2.b ^ _wgslsmith_dot_vec3_u32(vec3<u32>(select(605u, _wgslsmith_div_u32(var_0.b, 56185u), any(vec2<bool>(var_0.c, var_0.c))), _wgslsmith_add_u32(var_0.b | var_2.b, func_4(vec3<u32>(17332u, var_0.b, 65718u), global2[_wgslsmith_index_u32(var_2.b, 32u)], vec2<f32>(arg_0, -739f), global1[_wgslsmith_index_u32(var_2.b, 17u)])), ~firstLeadingBit(21517u)), vec3<u32>(~var_0.b, _wgslsmith_mult_u32(34193u, var_0.b) << (655u % 32u), 21500u)), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, global1[_wgslsmith_index_u32(reverseBits(firstLeadingBit(~0u)), 17u)]);
    global3 = select(countOneBits(u_input.a.x), u_input.a.x, select(true, false, all(!select(vec3<bool>(true, var_0.b.c, true), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, false, var_0.b.c)))));
    let var_1 = max(~_wgslsmith_sub_i32(u_input.a.x, countOneBits(40941i)), firstLeadingBit(_wgslsmith_div_i32(~13203i ^ -u_input.b, _wgslsmith_add_i32(func_1(vec4<u32>(4294967295u, var_0.b.b, 1u, var_0.b.b)), -2147483647i))));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.b.b, 92454u), ~var_0.b.b) | ((~_wgslsmith_mult_u32(var_0.b.b, 0u) | (var_0.b.b | var_0.b.b)) | var_0.b.b), 32u)];
    var var_2 = func_2(var_0.b.a);
    let var_3 = var_2.a;
    global2 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(211f, 1000f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, -112f) + vec2<f32>(var_0.b.a, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-119f, var_0.b.a)))))), _wgslsmith_clamp_u32(var_2.b, var_2.b, ~12324u), _wgslsmith_add_vec4_u32(vec4<u32>(min(~var_2.b, 0u), ~(~19312u), ~var_0.b.b, var_0.b.b), firstTrailingBit(vec4<u32>(42281u, 0u, 1u, var_0.b.b)) << (vec4<u32>(var_0.b.b, var_2.b, var_2.b, var_2.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a, 1045f, var_0.b.a, var_2.a)))))))));
}

