struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: array<vec3<f32>, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0;
    let var_1 = -1187f;
    let var_2 = Struct_2(Struct_1(reverseBits(17712u), vec3<i32>(-max(1i, arg_0.a.b.x), min(var_0.a.b.x, reverseBits(u_input.d)), _wgslsmith_mult_i32(~(-43211i), -var_0.a.b.x))), 1014f, 4294967295u, true);
    var var_3 = var_2.a;
    var var_4 = var_2;
    return -1355f;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = vec2<bool>(false, true);
    return Struct_2(Struct_1(28481u, ~_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d, 1i, u_input.d), ~vec3<i32>(u_input.d, u_input.d, -2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(4294967295u, vec3<i32>(1i, 0i, 55957i)), -794f, ~u_input.c, false))), -187f)), u_input.a.x, all(!(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global1 = array<vec3<f32>, 26>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(min(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.c, _wgslsmith_clamp_u32(u_input.b, 1u, 54472u), 22730u, ~1u), (u_input.e << (u_input.e % vec4<u32>(32u))) << (~u_input.e % vec4<u32>(32u)))), 26u)]);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, ~(~4294967295u), _wgslsmith_sub_u32(24382u & arg_0.a.a, arg_0.a.a)), 14u)];
    global1 = array<vec3<f32>, 26>();
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x))))), 1703f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1000f))));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(587f, var_0.x, -543f, -821f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, -355f, 1509f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 696f, arg_0.b, 471f), vec4<f32>(-241f, -385f, var_0.x, arg_0.b), true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-119f, arg_0.b, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, var_0.x, 1290f, 478f) - vec4<f32>(var_0.x, 1045f, -1157f, arg_0.b))))));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global1 = array<vec3<f32>, 26>();
    let var_0 = func_4(func_4(arg_1, (!arg_0 != false) | all(!vec3<bool>(false, arg_0, true))), all(select(!vec3<bool>(arg_1.d, false, true), vec3<bool>(arg_1.a.a <= arg_1.c, all(vec3<bool>(true, false, arg_0)), false), !select(vec3<bool>(arg_1.d, false, true), vec3<bool>(false, true, false), true))));
    let var_1 = -1i >= _wgslsmith_dot_vec2_i32(vec2<i32>(-(u_input.d & 1i), _wgslsmith_mult_i32(1i, firstLeadingBit(32272i))), func_2(vec4<f32>(_wgslsmith_f_op_f32(var_0.b * arg_1.b), _wgslsmith_div_f32(var_0.b, 771f), -559f, _wgslsmith_f_op_f32(-var_0.b))).a.b.yz);
    var var_2 = Struct_1(_wgslsmith_mod_u32(firstTrailingBit(~6664u ^ (4294967295u | var_0.a.a)), reverseBits(56154u)), var_0.a.b);
    global0 = array<vec4<i32>, 14>();
    return Struct_1(abs(_wgslsmith_dot_vec3_u32(~u_input.e.zxz, vec3<u32>(~var_0.c, func_2(vec4<f32>(var_0.b, arg_1.b, arg_1.b, var_0.b)).a.a, 40428u))), max(vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(var_0.a.b, vec3<i32>(var_2.b.x, var_2.b.x, arg_1.a.b.x))), 1i, -abs(-41458i)), -var_2.b));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 14>();
    global1 = array<vec3<f32>, 26>();
    var var_0 = vec2<u32>(countOneBits(abs(~_wgslsmith_dot_vec3_u32(u_input.e.xwy, vec3<u32>(u_input.b, 4294967295u, 1u)))), 11977u);
    var var_1 = func_5(true, Struct_2(Struct_1(u_input.b, firstTrailingBit(arg_0.b & vec3<i32>(-2147483647i, 1i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 868f))), arg_0.a, arg_2.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, 1038f, 234f, 377f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(140f, 153f, 432f, -1000f)), vec4<f32>(2039f, 1000f, 468f, 994f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2853f, 117f, 1000f, 221f))) + vec4<f32>(-2219f, -1000f, 731f, 757f))))));
    return Struct_1(1u, ~vec3<i32>(~0i, _wgslsmith_dot_vec4_i32(~global0[_wgslsmith_index_u32(var_1.a, 14u)], vec4<i32>(arg_3, -1i, -2147483647i, u_input.d)), i32(-1i) * -2147483647i));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = func_6(func_5(true, func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-952f, -602f, -1000f, -1768f))), true)), !(max(13339i, u_input.d) < ~(~(-1i))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))), reverseBits(1i));
    let var_1 = reverseBits(~firstLeadingBit(~vec2<u32>(u_input.b, 0u) & vec2<u32>(u_input.a.x, 14159u)));
    global0 = array<vec4<i32>, 14>();
    var var_2 = var_0.b.x;
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-621f, -325f, -793f, 2000f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1357f, 226f, -1196f, -302f)))))))));
    return ~var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1374f, 455f, -1490f) - vec3<f32>(-211f, 216f, 250f))) * global1[_wgslsmith_index_u32(u_input.b, 26u)]) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(461f, -790f, 405f) + vec3<f32>(-1298f, 679f, 116f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 26u)]) * global1[_wgslsmith_index_u32(func_1(Struct_1(4294967295u, vec3<i32>(u_input.d, 18932i, -45007i))), 26u)]))));
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_2(func_6(func_6(func_4(Struct_2(Struct_1(0u, vec3<i32>(u_input.d, u_input.d, 6629i)), var_0.x, u_input.a.x, true), true).a, all(vec2<bool>(false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), u_input.d), func_4(Struct_2(Struct_1(31065u, vec3<i32>(9463i, 8184i, 44873i)), -178f, u_input.c, false), all(vec2<bool>(true, false))).d, vec3<bool>(true, true, select(false, false, false)), ~_wgslsmith_add_i32(54662i, u_input.d)), var_0.x, u_input.a.x, -51950i == _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.d)))));
    var var_2 = _wgslsmith_f_op_f32(min(var_0.x, -1000f));
    var var_3 = ~(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.b), u_input.e.x, ~1u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x & 7048u)) & min(~(~u_input.e), ~abs(u_input.e)));
    global1 = array<vec3<f32>, 26>();
    var var_4 = var_1;
    global1 = array<vec3<f32>, 26>();
    var_3 = ~vec4<u32>(max(~var_3.x, u_input.b) >> (var_3.x % 32u), 39420u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c, 4294967295u), var_3.x), 7627u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_3.x, ~u_input.a.x, _wgslsmith_sub_u32(abs(u_input.e.x), 0u), 59868u), func_5(all(vec3<bool>(1u <= u_input.e.x, true, 9254u > var_3.x)), Struct_2(func_5(false, Struct_2(Struct_1(var_3.x, vec3<i32>(u_input.d, 14132i, 41886i)), -2182f, u_input.b, false)), var_1, 1u, false)).b.x, -564f, -vec4<i32>(u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d), ~1i | u_input.d, -(~0i)));
}

