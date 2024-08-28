struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 32853u);

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(~global0.x, Struct_1(vec2<bool>(!arg_0.c && !arg_0.a.x, all(vec4<bool>(true, false, true, false))), 0u, arg_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, -2567f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1217f, 265f)))))), countOneBits(-max(vec3<i32>(15385i, u_input.c, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.b.x), vec3<i32>(u_input.b.x, -49547i, u_input.c)))), global1[_wgslsmith_index_u32(395u, 15u)]);
    global0 = min(vec2<u32>(4294967295u, _wgslsmith_add_u32(~_wgslsmith_add_u32(1u, 24219u), arg_1.b)), firstTrailingBit(~(u_input.a | reverseBits(vec2<u32>(59290u, 63470u)))));
    global1 = array<Struct_1, 15>();
    let var_1 = Struct_2(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(max(vec2<u32>(28232u, 80568u), u_input.a), u_input.a & vec2<u32>(global0.x, 9543u)), select(u_input.a, countOneBits(u_input.a), !var_0.e.a)), arg_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, 2101f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(891f, 516f))))))), var_0.d, var_0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(trunc(-628f)), -463f)))));
    return vec2<bool>(true, all(vec2<bool>(var_1.e.a.x, !arg_1.c)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-2153f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1773f - _wgslsmith_f_op_f32(f32(-1f) * -143f))))));
    global1 = array<Struct_1, 15>();
    let var_1 = true;
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(ceil(var_0)) >= _wgslsmith_f_op_f32(f32(-1f) * -1523f), var_1);
    let var_3 = true;
    return Struct_1(func_3(global1[_wgslsmith_index_u32(~(~(~1u)), 15u)], global1[_wgslsmith_index_u32(22055u, 15u)]), ~arg_0.b, !any(select(select(vec4<bool>(arg_0.a.x, false, true, false), vec4<bool>(false, true, arg_0.c, arg_0.a.x), var_3), select(vec4<bool>(true, false, var_2.x, var_1), vec4<bool>(false, false, false, var_2.x), vec4<bool>(false, var_2.x, false, false)), select(vec4<bool>(false, true, var_3, false), vec4<bool>(arg_0.a.x, true, var_2.x, arg_0.a.x), true))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(~(~u_input.a.x), 15u)]);
    global0 = u_input.a;
    global0 = ~u_input.a;
    global1 = array<Struct_1, 15>();
    global0 = vec2<u32>(1u, ~(~var_0.b));
    return Struct_2(~(~global0.x) & _wgslsmith_mod_u32(~1u, ~(20749u << (var_0.b % 32u))), Struct_1(vec2<bool>(all(var_0.a), true), u_input.a.x, true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(1f - -963f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-416f + -1107f) + 341f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1659f, -1038f) - vec2<f32>(981f, 550f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(837f, -796f), vec2<f32>(-542f, -894f), var_0.a)) + vec2<f32>(1f, 1f)))))), abs(-(~_wgslsmith_div_vec3_i32(vec3<i32>(17237i, 0i, u_input.b.x), vec3<i32>(28092i, 25318i, u_input.c)))), global1[_wgslsmith_index_u32(~34417u, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -20342i;
    let var_1 = -var_0;
    let var_2 = vec4<bool>(all(vec4<bool>(false || (35786u == u_input.a.x), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), -u_input.c > _wgslsmith_add_i32(-1i, -14613i), true)), false, all(vec2<bool>(!all(vec3<bool>(true, true, false)), false)), false && all(vec3<bool>(true, all(vec3<bool>(false, true, true)), true)));
    var var_3 = func_1(!(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2, vec4<bool>(true, false, var_2.x, true))));
    var var_4 = func_1(var_2);
    let var_5 = Struct_1(var_4.e.a, ~(~(~40144u | ~var_4.b.b)), !(var_3.b.b >= (~var_4.e.b >> (u_input.a.x % 32u))));
    var_4 = Struct_2(_wgslsmith_mod_u32(~u_input.a.x, 1u) ^ (~global0.x << (0u % 32u)), Struct_1(var_3.b.a, var_3.b.b, true && func_3(var_4.e, Struct_1(vec2<bool>(var_5.a.x, var_5.c), var_3.a, var_2.x)).x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_3.c, _wgslsmith_f_op_vec2_f32(select(var_3.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.x, -1066f) - vec2<f32>(-931f, 1048f)), vec2<bool>(true, var_4.e.c))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-944f, _wgslsmith_f_op_f32(round(var_3.c.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-369f, 164f)))))), select(vec3<i32>(1i, _wgslsmith_sub_i32(var_3.d.x, 2147483647i) << (~26454u % 32u), var_0), vec3<i32>(~(2147483647i ^ u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.d.x, -2147483647i, var_3.d.x, var_0) ^ vec4<i32>(-22242i, u_input.b.x, var_1, -31710i), vec4<i32>(2147483647i, var_0, -1i, var_0) ^ vec4<i32>(0i, 4208i, u_input.b.x, -21464i)), var_0), vec3<bool>(var_5.c, func_1(select(var_2, var_2, false)).b.c, all(var_2))), func_2(Struct_1(var_2.ww, 54575u, var_4.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(global0.x), var_3.b.b, 14814u), u_input.a.x, 1u), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(10330u, var_5.b, 27586u), vec3<u32>(0u, 1u, var_4.a)), ~vec3<u32>(var_3.a, 0u, 1u)), all(var_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.c - var_4.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, 314f))))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -589f))), 497f)));
}

