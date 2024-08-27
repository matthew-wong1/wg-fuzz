struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global1: array<i32, 7> = array<i32, 7>(-23800i, -3070i, i32(-2147483648), -1i, i32(-2147483648), -1i, -28951i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    global1 = array<i32, 7>();
    global1 = array<i32, 7>();
    global0 = array<vec3<bool>, 20>();
    global0 = array<vec3<bool>, 20>();
    var var_0 = -1i;
    return vec2<u32>(4294967295u, ~arg_2.a);
}

fn func_2() -> Struct_2 {
    let var_0 = vec3<u32>(14109u, firstTrailingBit(select(abs(10587u), ~1u, true)), 1u);
    let var_1 = false;
    let var_2 = Struct_2(Struct_1(55963u | ~var_0.x, countOneBits(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.d, 7u)], 24023i), 1i & global1[_wgslsmith_index_u32(var_0.x, 7u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1042f, -127f)), vec3<bool>(var_1, false, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(46404u, 7u)], u_input.b) < _wgslsmith_dot_vec2_i32(vec2<i32>(21107i, global1[_wgslsmith_index_u32(11267u, 7u)]), vec2<i32>(global1[_wgslsmith_index_u32(1u, 7u)], 25960i))), var_0));
    var var_3 = _wgslsmith_dot_vec2_u32(reverseBits(select(var_2.a.e.yz, ~func_3(Struct_1(4294967295u, -2147483647i, var_2.a.c, global0[_wgslsmith_index_u32(u_input.d, 20u)], var_2.a.e), var_2.a.c.x, Struct_1(u_input.d, u_input.a.x, vec2<f32>(var_2.a.c.x, var_2.a.c.x), global0[_wgslsmith_index_u32(var_2.a.a, 20u)], vec3<u32>(var_2.a.e.x, 105500u, var_0.x))), !vec2<bool>(false, var_1))), var_0.xx);
    global0 = array<vec3<bool>, 20>();
    return Struct_2(Struct_1(abs(79388u), ~(~(-var_2.a.b)), var_2.a.c, global0[_wgslsmith_index_u32(2680u, 20u)], _wgslsmith_clamp_vec3_u32(countOneBits(abs(var_0)), select(var_0, firstLeadingBit(var_0), var_1), abs(var_0))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    global1 = array<i32, 7>();
    var var_0 = -(~(~(~(-2147483647i))));
    let var_1 = arg_2.x;
    global0 = array<vec3<bool>, 20>();
    var var_2 = !(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b), -2147483647i >> (func_3(arg_1.a, 140f, arg_1.a).x % 32u)) < ((reverseBits(48798i) & arg_1.a.b) | arg_1.a.b));
    return ~40505u;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    var var_0 = 1127f;
    var var_1 = !arg_1.d.x | arg_1.d.x;
    var var_2 = Struct_2(Struct_1(min(~(~0u), ~1u), -2147483647i, arg_2.ww, arg_1.d, ~firstLeadingBit(vec3<u32>(arg_1.e.x, arg_1.a, 1u) << (arg_1.e % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(1000f - arg_1.c.x);
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, func_4(var_2.a.c.x, func_2(), !arg_1.d.zz), 0u, 7702u) >> (select(vec4<u32>(_wgslsmith_sub_u32(var_2.a.a, u_input.d), _wgslsmith_dot_vec2_u32(arg_1.e.zy, vec2<u32>(var_2.a.e.x, 0u)), ~13462u, ~arg_0), vec4<u32>(4294967295u, 0u, 127665u, arg_1.a) >> (~vec4<u32>(1u, 42878u, u_input.d, 4294967295u) % vec4<u32>(32u)), true) % vec4<u32>(32u)), select(vec4<u32>(17425u, 1u | arg_0, _wgslsmith_dot_vec3_u32(arg_1.e, vec3<u32>(0u, 0u, arg_0)), 31576u) & _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, arg_1.e.x, 88487u, arg_0), vec4<u32>(arg_1.a, 12487u, var_2.a.a, arg_0)), ~vec4<u32>(1u, 4294967295u, arg_1.a, var_2.a.e.x)), vec4<u32>(~var_2.a.e.x, ~(~u_input.d), ~1u, _wgslsmith_div_u32(~46002u, _wgslsmith_add_u32(arg_0, 46139u))), !(!(!vec4<bool>(var_2.a.d.x, arg_1.d.x, var_2.a.d.x, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.c.x, 1228f)) * 412f);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = select(arg_0, true, arg_0);
    global0 = array<vec3<bool>, 20>();
    global1 = array<i32, 7>();
    var var_1 = vec4<u32>(1u, 1u, 1u, ~abs(u_input.d) << ((_wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(u_input.d, 0u)) ^ u_input.d) % 32u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    var var_0 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1274f - -541f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 2317f) + _wgslsmith_f_op_f32(func_1(1u, Struct_1(65792u, u_input.c, vec2<f32>(-1510f, -650f), global0[_wgslsmith_index_u32(4294967295u, 20u)], vec3<u32>(u_input.d, u_input.d, 126557u)), vec4<f32>(1000f, -566f, 228f, -1535f)))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -538f)))), abs(vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.d), 7u)], u_input.a.x), u_input.b)));
    var var_1 = ~(vec4<u32>(5150u, var_0.a.e.x, 4294967295u, ~var_0.a.e.x) >> (vec4<u32>(0u >> (u_input.d % 32u), 1u, 11163u, ~u_input.d) % vec4<u32>(32u)));
    global1 = array<i32, 7>();
    var_0 = Struct_2(var_0.a);
    let var_2 = u_input.d;
    var_0 = Struct_2(func_2().a);
    let var_3 = firstLeadingBit(~vec3<i32>(-12051i, 1i, var_0.a.b));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, var_0.a.c.x, 383f, -662f))))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -426f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) + var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.c.x, -476f))), ~4294967295u > var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1761f)), 787f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.c.x, var_4.x, var_4.x), var_4.wwz)) * vec3<f32>(-1791f, var_0.a.c.x, -1966f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, var_0.a.c.x, -545f)))));
}

