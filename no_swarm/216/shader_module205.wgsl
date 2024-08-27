struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-160f, -913f);

var<private> global1: array<Struct_5, 31>;

var<private> global2: array<vec3<f32>, 17>;

var<private> global3: array<f32, 3>;

var<private> global4: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32) -> f32 {
    global3 = array<f32, 3>();
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 1084u, 895u), 31u)];
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-679f, -1000f, arg_0, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, -1861f, global3[_wgslsmith_index_u32(u_input.b.x, 3u)], -1306f)), vec4<f32>(-315f, global0.x, -606f, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]))))));
    var var_2 = vec3<bool>(true, !var_0.c.d, !var_0.c.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b, 3u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~var_0.b, 3u)])) * global0.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    global3 = array<f32, 3>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 71578u)) | (vec2<u32>(4294967295u, 1u) | u_input.b), u_input.b), 3u)], _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(1251f * _wgslsmith_f_op_f32(-global0.x))))), firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c, 0i), max(u_input.c, u_input.d.x), -29213i ^ u_input.c) | -2147483647i));
    let var_1 = _wgslsmith_clamp_u32(u_input.a, ~firstTrailingBit(min(abs(16013u), 4294967295u)), _wgslsmith_mod_u32(16u, 4294967295u));
    global2 = array<vec3<f32>, 17>();
    var var_2 = vec4<u32>(u_input.b.x, var_1, (~var_1 | u_input.a) & firstLeadingBit(abs(1u)), abs(var_1)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(max(_wgslsmith_mod_u32(var_1, u_input.b.x), 6222u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(61612u, 3623u)), u_input.b & u_input.b), 15906u, countOneBits(4294967295u) | var_1), vec4<u32>(4294967295u, ~var_1, max(reverseBits(0u), 0u), 3756u << (u_input.a % 32u))) % vec4<u32>(32u));
    return Struct_1(_wgslsmith_mod_u32(var_1, ~firstLeadingBit(u_input.a)), !((min(0u, u_input.b.x) != _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1, u_input.a))) & (_wgslsmith_f_op_f32(1000f * 733f) == _wgslsmith_f_op_f32(-global0.x))), select(abs(u_input.d), max(max(vec4<i32>(u_input.d.x, u_input.c, u_input.c, -11997i), vec4<i32>(-13290i, 4455i, -1i, var_0.c) << (vec4<u32>(33084u, 4294967295u, var_2.x, 64161u) % vec4<u32>(32u))), select(firstTrailingBit(vec4<i32>(2643i, 10197i, -28898i, u_input.c)), u_input.d & u_input.d, any(arg_0))), select(!(!vec4<bool>(false, true, arg_0.x, true)), vec4<bool>(!arg_1.x, arg_1.x, select(arg_0.x, true, arg_0.x), true), true)), !any(arg_1.yx));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(16117u, 50930u), vec2<u32>(arg_0.b, 55412u)), ~1u, 0u, 1u)), ~firstTrailingBit(~vec4<u32>(arg_0.b, 1u, 0u, arg_2.a.a)), _wgslsmith_div_vec4_u32(max(~vec4<u32>(arg_2.b, 30998u, 1u, arg_2.b), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b, 1u, arg_0.c.a, 0u), vec4<u32>(37171u, arg_2.a.a, arg_0.b, 1u))), vec4<u32>(~u_input.a, arg_0.b, arg_2.b, ~681u)));
    global1 = array<Struct_5, 31>();
    global3 = array<f32, 3>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.b, _wgslsmith_mult_u32(~5099u, 0u)), 17u)];
    global0 = vec2<f32>(781f, 2287f);
    return arg_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = false;
    global4 = array<vec4<bool>, 11>();
    return global0.x;
}

fn func_1(arg_0: Struct_5) -> Struct_4 {
    var var_0 = arg_0.c.c.xy;
    let var_1 = _wgslsmith_f_op_f32(func_5(func_4(Struct_5(arg_0.a, arg_0.c.a, func_2(vec3<bool>(arg_0.c.d, arg_0.c.b, arg_0.c.b), !vec3<bool>(true, true, arg_0.a))), Struct_2(_wgslsmith_f_op_f32(round(1527f)), -1907f, var_0.x), Struct_4(arg_0.c, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(31937u, 0u, 1u, 1u), vec4<u32>(1u, u_input.b.x, arg_0.b, arg_0.b))), Struct_3(Struct_2(-941f, -1550f, -30466i)))), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1110f, 228f), vec2<f32>(global0.x, -1360f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 3u)], 998f), vec2<f32>(1203f, -604f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, _wgslsmith_f_op_f32(round(global0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], 143f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global3[_wgslsmith_index_u32(arg_0.c.a, 3u)]))))))));
    global3 = array<f32, 3>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1128f + _wgslsmith_div_f32(1018f, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, u_input.b.x), 3u)]))));
    global4 = array<vec4<bool>, 11>();
    return Struct_4(arg_0.c, 8245u & u_input.b.x, Struct_3(Struct_2(651f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_div_i32(-1i, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_5((true | select(true, false, true)) & false, u_input.b.x, Struct_1(abs(u_input.b.x) << (14371u % 32u), u_input.c > _wgslsmith_mod_i32(0i, 21474i), u_input.d, !all(global4[_wgslsmith_index_u32(36403u, 11u)]))));
    let var_1 = func_1(global1[_wgslsmith_index_u32(0u, 31u)]).c.a;
    let var_2 = vec2<i32>(0i >> (0u % 32u), _wgslsmith_add_i32(u_input.d.x, var_0.a.c.x));
    let var_3 = -u_input.c;
    var var_4 = ~(~vec4<u32>(var_0.a.a, u_input.b.x, var_0.a.a, u_input.b.x)) ^ ~vec4<u32>(4294967295u, u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.a, 1u, var_0.a.a, var_0.a.a), vec4<u32>(u_input.a, u_input.a, 1u, var_0.a.a)), firstLeadingBit(vec4<u32>(var_0.b, var_0.a.a, u_input.b.x, u_input.b.x))), 46431u);
    var var_5 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3[_wgslsmith_index_u32(var_4.x, 3u)], -152f), vec2<f32>(-388f, global0.x))))) + vec2<f32>(-500f, _wgslsmith_div_f32(-1270f, _wgslsmith_f_op_f32(f32(-1f) * -785f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.a, _wgslsmith_f_op_f32(round(-248f)))))), vec2<bool>(~_wgslsmith_dot_vec3_u32(var_4.xxw, vec3<u32>(var_0.b, 2823u, 9480u)) == u_input.b.x, true)));
    var var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, var_1.b), vec2<f32>(1321f, var_1.b))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, global0.x), vec2<f32>(var_0.c.a.a, var_5.x))))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(345f, global0.x)), -286f), var_5.x) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1204f, var_5.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(483f, -876f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1891f, 939f), vec2<f32>(var_1.b, global3[_wgslsmith_index_u32(1u, 3u)]), var_0.a.b)))))));
    var_0 = func_1(global1[_wgslsmith_index_u32(u_input.b.x, 31u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_0.b, ~var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-733f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(2849u, 3u)] + var_1.b), _wgslsmith_f_op_f32(func_5(var_0.a, vec2<u32>(var_0.b, var_0.b), vec2<f32>(var_0.c.a.b, global0.x))))))));
}

