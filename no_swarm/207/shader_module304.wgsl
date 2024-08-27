struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_1, 13>();
    let var_0 = arg_2;
    var var_1 = vec3<bool>(arg_2.a.x, all(vec2<bool>(true, (true | var_0.a.x) | any(vec3<bool>(false, true, arg_2.a.x)))), true);
    var_1 = var_0.a.wyx;
    global0 = array<Struct_1, 13>();
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)))))), ~firstLeadingBit(0u));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(func_1(u_input.a.x, arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 13u)], -23435i).a.x, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(549f, 530f)))))), arg_0.x);
    var var_1 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), 2147483647i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x)), abs(u_input.a)) >> (max(~vec4<u32>(arg_0.x, ~78261u, min(4294967295u, var_0.c), var_0.c), ~(~reverseBits(vec4<u32>(var_0.c, arg_0.x, var_0.c, var_0.c)))) % vec4<u32>(32u));
    var_1 = ~u_input.a;
    var var_2 = ~(64094u >> ((38395u & ~(~var_0.c)) % 32u));
    var var_3 = firstLeadingBit(arg_0.x);
    return _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_add_i32(var_1.x, 0i));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = u_input.a.xy;
    let var_1 = all(select(arg_0.a, vec4<bool>(all(vec2<bool>(arg_1.a.x, arg_0.a.x)), arg_2.a.x, all(!arg_1.a.zw), false), !(1u < (arg_0.c | 32576u))));
    var var_2 = func_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(select(u_input.a.x, -15056i, false), 0i, var_0.x), _wgslsmith_add_i32(55525i, var_0.x)), func_3(select(~vec4<u32>(arg_2.c, 4137u, 25863u, arg_3.c), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.c, arg_0.c, 0u, 9932u), vec4<u32>(arg_0.c, 7617u, 1u, 236u)), arg_1.a))), _wgslsmith_sub_u32(16094u, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(arg_3.c, 1u, arg_3.c)), ~(~vec3<u32>(46918u, arg_0.c, arg_0.c)))), Struct_1(!(!vec4<bool>(true, true, arg_0.a.x, arg_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b, arg_3.b))), 92118u), 13104i);
    var var_3 = reverseBits(var_2.c);
    var_2 = Struct_1(!vec4<bool>(all(var_2.a.xy), true, false || func_1(1i, 9129u, Struct_1(vec4<bool>(var_1, var_2.a.x, arg_1.a.x, true), 1086f, arg_1.c), u_input.a.x).a.x, var_2.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1676f)))), firstLeadingBit(~63839u));
    return !(!(u_input.a.x != -2147483647i));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = !arg_2.a;
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_1 = arg_2;
    var var_2 = u_input.a.zw;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1429f, arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(func_1(arg_1.x, arg_2.c, arg_2, -2147483647i).b, -472f)))), ~arg_2.c | ~_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(arg_2.c, 4294967295u, var_1.c)), -1i | arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-29331i, ~91698u, global0[_wgslsmith_index_u32(~(~(~4294967295u)), 13u)], -1i);
    var var_1 = u_input.a.x;
    let var_2 = -1i;
    global0 = array<Struct_1, 13>();
    var var_3 = var_0;
    var var_4 = global0[_wgslsmith_index_u32(1u, 13u)];
    var_3 = func_1(_wgslsmith_div_i32(36697i, var_2), ~(var_4.c | ~func_1(0i, var_3.c, Struct_1(vec4<bool>(var_3.a.x, false, false, var_4.a.x), var_0.b, var_4.c), 0i).c), Struct_1(select(func_1(0i, 27644u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_4.c, 43935u, var_4.c), vec4<u32>(var_4.c, var_3.c, 20581u, 131307u)), 13u)], var_2 ^ -2147483647i).a, var_0.a, !(var_3.a.x || false)), var_3.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.c) | vec3<u32>(var_0.c, 28094u, var_4.c), ~vec3<u32>(var_0.c, 1u, var_0.c)), select(vec3<u32>(31067u, 21658u, 43422u), vec3<u32>(var_4.c, var_0.c, var_4.c), true))), 7665i);
    var var_5 = 72786u;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-426f)), -1000f, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b, -326f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1071f, -1905f) - 566f)))), vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(var_2, 2147483647i)), firstTrailingBit(u_input.a.x), ~17411i, i32(-1i) * -var_2) ^ vec4<i32>(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -61387i, -36540i), -u_input.a.wxx), -u_input.a.x, -(u_input.a.x >> (var_4.c % 32u))), func_1(var_2, 24472u, Struct_1(vec4<bool>(any(vec2<bool>(var_4.a.x, true)), var_0.a.x, var_0.a.x, func_2(var_0, global0[_wgslsmith_index_u32(22842u, 13u)], Struct_1(var_4.a, -2218f, 0u), var_0)), _wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(f32(-1f) * -1904f)), countOneBits(~67388u)), -2147483647i));
}

