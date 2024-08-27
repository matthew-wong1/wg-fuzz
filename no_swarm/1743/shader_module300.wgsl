struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    var var_0 = arg_0;
    var var_1 = 0u;
    return 364u;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> vec4<f32> {
    var var_0 = !((false | all(vec2<bool>(true, true))) == all(vec4<bool>(all(vec3<bool>(true, false, true)), any(global0[_wgslsmith_index_u32(0u, 31u)]), true, true)));
    var_0 = (arg_0 >= ~(~_wgslsmith_sub_i32(arg_0, 54556i))) || true;
    var var_1 = -866f;
    let var_2 = Struct_1(func_3(Struct_1(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(20986u, arg_1.x, 1u, arg_1.x), ~vec4<u32>(arg_1.x, 0u, arg_1.x, 27995u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1560f, -497f, -472f, -217f)), true, arg_1 | u_input.a.xz), countOneBits(u_input.a), -_wgslsmith_mod_i32(~(-45063i), arg_0)), arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(394f, 800f, 251f, -1185f) - vec4<f32>(-1191f, -745f, -1032f, 208f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -191f, 1025f, -1956f))))), !any(vec2<bool>(true, true)), arg_1);
    let var_3 = arg_0;
    return vec4<f32>(-257f, var_2.c.x, var_2.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * _wgslsmith_f_op_f32(var_2.c.x - var_2.c.x)))));
}

fn func_1() -> bool {
    global0 = array<vec4<bool>, 31>();
    var var_0 = Struct_1(abs(u_input.a.x), 59141u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(134f, 1594f, 1082f, -1380f), vec4<f32>(-723f, 1040f, 473f, -1211f), global0[_wgslsmith_index_u32(0u, 31u)])) * vec4<f32>(1000f, 2861f, 922f, -961f)))), true, vec2<u32>(u_input.a.x | _wgslsmith_sub_u32(~1u, 1u & u_input.a.x), 1u));
    var var_1 = _wgslsmith_f_op_f32(sign(var_0.c.x));
    let var_2 = ~0u;
    var var_3 = Struct_1(_wgslsmith_mult_u32(4294967295u, var_0.a ^ var_2), u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-591f - var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -338f), _wgslsmith_f_op_f32(min(730f, -343f)), _wgslsmith_f_op_f32(ceil(-414f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c), var_0.c) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(2147483647i, var_0.e))))), false, _wgslsmith_mod_vec2_u32(~min(vec2<u32>(u_input.a.x, var_0.e.x), ~var_0.e), _wgslsmith_mod_vec2_u32(abs(var_0.e), reverseBits(~vec2<u32>(0u, var_2)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, u_input.a.x)) & firstTrailingBit(u_input.a.x))), 9043u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 633f, 1000f, -1719f) - vec4<f32>(-1214f, -1094f, -320f, -145f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 503f, -171f, -1000f)))), func_1())), true, u_input.a.xx);
    global0 = array<vec4<bool>, 31>();
    let var_1 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(_wgslsmith_div_i32(1i, firstTrailingBit(0i)), ~(~2637i), -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(37777i, -24291i), min(vec2<i32>(2147483647i, 18614i), vec2<i32>(23058i, 6625i)))), vec4<i32>(reverseBits(-6298i) << (u_input.a.x % 32u), ~(-6149i >> (var_0.e.x % 32u)), firstLeadingBit(1i), _wgslsmith_sub_i32(-16403i, 0i)), !var_0.d), vec4<i32>(0i, -(~abs(-2147483647i)), 1i, -2147483647i ^ reverseBits(_wgslsmith_clamp_i32(27579i, -20489i, 40156i))));
    var var_2 = var_0.c.xx;
    global0 = array<vec4<bool>, 31>();
    var var_3 = -abs(-vec2<i32>(min(0i, 0i), var_1.x));
    var var_4 = !(!vec3<bool>(var_0.d, true, var_0.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.zxy + vec3<f32>(var_2.x, var_2.x, 527f)) + _wgslsmith_f_op_vec3_f32(-var_0.c.yzy))) + var_0.c.yzw), _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-110f)))), select(any(vec4<bool>(false, true, false, var_4.x)) | var_4.x, !(var_3.x != -7736i), func_1()))), _wgslsmith_sub_vec4_i32(vec4<i32>(max(2147483647i, var_3.x), var_1.x, 53511i, _wgslsmith_sub_i32(var_1.x, var_3.x)) ^ abs(var_1 & vec4<i32>(var_3.x, 0i, var_3.x, var_1.x)), vec4<i32>(0i, -var_1.x, countOneBits(abs(var_3.x)), var_3.x)), 70877u);
}

