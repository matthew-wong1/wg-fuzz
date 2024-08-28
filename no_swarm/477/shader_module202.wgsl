struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<f32, 6>;

var<private> global1: array<f32, 24>;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<Struct_2, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(538f * _wgslsmith_f_op_f32(round(-280f))), -1012f) * global1[_wgslsmith_index_u32(min(abs(arg_0.d.a.x) >> (arg_0.d.a.x % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.a.x, arg_0.d.a.x, 49824u, 0u), vec4<u32>(13389u, 71251u, arg_0.d.a.x, 4294967295u))), 24u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 24u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.d.a.x, 24u)])), 1735f, !any(vec4<bool>(arg_0.d.b, true, arg_0.d.b, true))))))));
    global0 = array<f32, 6>();
    global1 = array<f32, 24>();
    var_0 = global1[_wgslsmith_index_u32(1u, 24u)];
    let var_1 = -1047f;
    return arg_0.d.a.x << (~4294967295u % 32u);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = !((((arg_0 | 0i) > countOneBits(arg_0)) != false) || true);
    let var_1 = ~66300u;
    var var_2 = vec3<bool>(true, false & !(!arg_3.b), false);
    let var_3 = arg_2.yxw;
    global0 = array<f32, 6>();
    return max(countOneBits(vec2<i32>(-u_input.a, _wgslsmith_div_i32(u_input.a >> (var_1 % 32u), var_3.x))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 0i) & vec2<i32>(2147483647i, 3870i), arg_2.yy) >> (arg_3.a % vec2<u32>(32u)));
}

fn func_2() -> u32 {
    let var_0 = u_input.a;
    global0 = array<f32, 6>();
    global3 = array<Struct_2, 1>();
    var var_1 = Struct_2(_wgslsmith_clamp_vec2_i32(func_4(2147483647i, vec2<bool>(true, true), -vec4<i32>(var_0, 1i, u_input.a, -13724i), Struct_1(min(vec2<u32>(36774u, 24347u), vec2<u32>(4294967295u, 4294967295u)), true, func_3(global3[_wgslsmith_index_u32(76429u, 1u)]))), -vec2<i32>(~(-1i), 13595i), firstTrailingBit(vec2<i32>(countOneBits(var_0), -28744i))), global0[_wgslsmith_index_u32(49816u, 6u)], vec4<i32>(-firstTrailingBit(u_input.a), var_0, _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, var_0, -33270i), vec3<i32>(var_0, u_input.a, 13388i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(-1673i, 2147483647i, -44524i))), _wgslsmith_mod_i32(var_0, -98i)), global2[_wgslsmith_index_u32(~1u >> (func_3(Struct_2(vec2<i32>(37718i, -2147483647i), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(83289u, 24u)])), reverseBits(vec4<i32>(u_input.a, -48769i, 14274i, 7784i)), Struct_1(vec2<u32>(76532u, 39488u), true, 18556u), global1[_wgslsmith_index_u32(1u, 24u)])) % 32u), 16u)], _wgslsmith_f_op_f32(max(317f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1680f, -1000f, false)) * -369f))))));
    global0 = array<f32, 6>();
    return max(~4294967295u, _wgslsmith_sub_u32(4294967295u ^ ~var_1.d.a.x, var_1.d.a.x));
}

fn func_1() -> vec4<bool> {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(max(23854u, 1u), _wgslsmith_div_u32(1u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(50566u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(57715u, 60823u, 27671u, 56717u))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~var_0.x, 6u)]))), -2707f)));
    var var_2 = min(select(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, u_input.a, 1i, u_input.a), vec4<i32>(0i, -1i, u_input.a, 0i)), -vec4<i32>(-16710i, -30596i, 2147483647i, u_input.a) ^ vec4<i32>(1i, -1i, 1i, 1i), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17759i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, -1i, 30818i, u_input.a)), u_input.a, 1912i & u_input.a, -25053i)), min(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, -30737i, u_input.a), ~vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a)), _wgslsmith_sub_u32(func_2(), 22216u) > ~(~var_0.x)), ~_wgslsmith_mult_vec4_i32(~(~vec4<i32>(u_input.a, u_input.a, -6428i, u_input.a)), vec4<i32>(1i, ~(-2147483647i), u_input.a, 2147483647i)));
    return !(!select(vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, any(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), any(vec3<bool>(true, false, true))), true));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    global3 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(u_input.a, u_input.a));
    let var_1 = func_1().zw;
    var var_2 = global2[_wgslsmith_index_u32(7154u, 16u)];
    return global2[_wgslsmith_index_u32(~4294967295u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~1u & _wgslsmith_clamp_u32(~(~4294967295u), 52847u, 1u), !any(vec3<bool>(true, true, true)), select(vec4<bool>(false, true, any(vec2<bool>(true, false)), false), !select(vec4<bool>(true, false, true, true), func_1(), false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(16843u, 6u)], -854f))), global0[_wgslsmith_index_u32(44402u, 6u)])));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f * 350f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(var_0.a.x, 6u)])))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1475f * global1[_wgslsmith_index_u32(var_0.a.x, 24u)]))), 849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_0.c ^ var_0.c, 6u)]))))));
    global0 = array<f32, 6>();
    let var_2 = vec3<u32>(34940u, ~func_5(min(var_0.a.x, countOneBits(4294967295u)), !(u_input.a <= -40594i), vec4<bool>(var_0.b, var_0.b & false, true && var_0.b, false), 1f).c, var_0.c ^ var_0.a.x);
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), global0[_wgslsmith_index_u32(17153u, 6u)]);
}

