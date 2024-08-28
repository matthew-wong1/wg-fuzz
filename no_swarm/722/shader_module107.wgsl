struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -262f);
    global0 = array<vec4<bool>, 12>();
    var var_1 = Struct_2(~(~_wgslsmith_dot_vec2_u32(arg_0.b.xw, vec2<u32>(0u, 27774u))) | _wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), true);
    var var_2 = Struct_4(Struct_2(_wgslsmith_clamp_u32(max(u_input.c, ~var_1.a), ~(~11063u), ~4294967295u), true));
    var var_3 = Struct_2(~var_1.a, all(select(arg_0.a.zxy, select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(var_1.b, false, false), var_2.a.b | false), true)));
    return ~vec2<u32>(max(reverseBits(arg_0.b.x) | abs(arg_0.b.x), ~firstTrailingBit(90162u)), _wgslsmith_div_u32(30856u, _wgslsmith_clamp_u32(firstLeadingBit(229u), 104024u, _wgslsmith_clamp_u32(var_3.a, 4294967295u, var_2.a.a))));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_u32(~(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(93327u, arg_1)), abs(vec2<u32>(arg_1, u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(65850u, arg_1), vec2<u32>(u_input.c, 1u))) & firstTrailingBit(func_3(Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(u_input.c, u_input.c, arg_1, u_input.c), -1359f)))), vec2<u32>(min(~abs(0u), ~(~u_input.c)), ~u_input.c));
    let var_1 = any(select(!vec4<bool>(true, var_0 > 1u, true, true), global0[_wgslsmith_index_u32(var_0, 12u)], any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = Struct_3(!vec4<bool>(true, arg_0.x >= _wgslsmith_f_op_f32(arg_0.x * -1431f), var_1, true), Struct_2(var_0, all(!select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(false, var_1, var_1, var_1), var_1))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-496f)), -107f)), _wgslsmith_f_op_f32(max(-221f, -633f)));
    let var_4 = 0u;
    return ~(0u | ~arg_1);
}

fn func_1() -> Struct_3 {
    var var_0 = firstLeadingBit(min(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(956f, -656f, -122f, -1106f))), 1u, vec4<i32>(0i, u_input.d.x, 2200i, u_input.d.x), -vec2<i32>(u_input.b, u_input.e.x)) >> (func_3(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 12u)], vec4<u32>(4294967295u, u_input.c, 1u, u_input.c), 1000f)).x % 32u), ~(~u_input.c)));
    global0 = array<vec4<bool>, 12>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(532f - -524f))))), _wgslsmith_f_op_f32(exp2(1f)));
    let var_2 = ~_wgslsmith_mult_vec3_i32(-reverseBits(_wgslsmith_sub_vec3_i32(u_input.e, u_input.d)), abs(_wgslsmith_sub_vec3_i32(u_input.e, abs(u_input.d))));
    global0 = array<vec4<bool>, 12>();
    return Struct_3(global0[_wgslsmith_index_u32(reverseBits(u_input.c), 12u)], Struct_2(4294967295u, (u_input.c > ~4294967295u) && false));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_4 {
    var var_0 = max(-61478i, u_input.d.x);
    var_0 = _wgslsmith_dot_vec3_i32(max(reverseBits(vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b), -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(16711i, u_input.e.x, u_input.b), u_input.d))), vec3<i32>(~u_input.a | -u_input.e.x, i32(-1i) * -24215i, select(i32(-1i) * -47836i, select(14065i, -2147483647i, arg_0.b.b), false))), vec3<i32>(u_input.a, min(u_input.b, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.a, u_input.b, u_input.e.x)) << ((arg_0.b.a >> (u_input.c % 32u)) % 32u)), u_input.b));
    let var_1 = Struct_1(vec4<bool>(true, false, arg_0.b.b, -(u_input.a ^ u_input.d.x) < (i32(-1i) * -36753i)), vec4<u32>(arg_0.b.a, 10726u, arg_0.b.a, 52853u), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - arg_1)) * arg_1))));
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    return Struct_4(arg_0.b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = ~arg_3;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(293f, 1703f), _wgslsmith_f_op_f32(step(1768f, 2085f)))))) - -1330f)));
    let var_2 = u_input.b;
    var var_3 = vec4<bool>(arg_1.a.b, true, -9138i < var_0.x, all(vec3<bool>(4294967295u == min(1u, arg_0.a.a), firstTrailingBit(arg_2.x) < -46414i, _wgslsmith_f_op_f32(sign(var_1)) > -1558f)));
    let var_4 = vec2<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, arg_0.a.a), arg_1.a.a)));
    return func_4(Struct_3(vec4<bool>(arg_0.a.b, func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -990f)).a.b, firstTrailingBit(-20687i) != _wgslsmith_div_i32(u_input.b, var_2), true), func_1().b), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1173f))))), Struct_4(func_1().b), countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-48367i, 0i, 0i) >> (vec3<u32>(u_input.c, u_input.c, 52973u) % vec3<u32>(32u)), select(u_input.d, vec3<i32>(u_input.a, u_input.b, 0i), false)), (u_input.a | 56086i) & 2147483647i)), u_input.e.yz);
    global0 = array<vec4<bool>, 12>();
    var var_1 = min(-35576i, u_input.d.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1073f, 198f) * vec2<f32>(-2564f, -333f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-302f, 1788f), vec2<f32>(534f, 1000f), vec2<bool>(false, var_0.a.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(208f, 1555f), vec2<f32>(176f, 1070f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 164f) * vec2<f32>(-620f, -673f))))));
    var var_3 = Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.a.a, 0u, u_input.c), vec3<u32>(u_input.c, var_0.a.a, u_input.c), var_0.a.b), vec3<u32>(4294967295u, 63901u, u_input.c) >> (vec3<u32>(u_input.c, 54050u, u_input.c) % vec3<u32>(32u))), vec3<u32>(~23124u, ~1u, u_input.c & u_input.c)), 12u)], ~(~abs(vec4<u32>(u_input.c, 13507u, 18548u, var_0.a.a))) ^ vec4<u32>(_wgslsmith_mult_u32(~1u, func_4(Struct_3(global0[_wgslsmith_index_u32(u_input.c, 12u)], var_0.a), 1345f).a.a), max(abs(u_input.c), u_input.c), 0u, 3590u), _wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f - var_2.x) * var_2.x))));
    var var_4 = Struct_3(!(!(!var_3.a)), Struct_2(~(~11068u), all(!(!vec4<bool>(var_3.a.x, false, var_0.a.b, var_3.a.x)))));
    let var_5 = _wgslsmith_div_u32(~var_0.a.a, 0u);
    global0 = array<vec4<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.c)) * _wgslsmith_f_op_f32(trunc(var_3.c))), _wgslsmith_f_op_f32(f32(-1f) * -1195f), _wgslsmith_f_op_f32(3054f - 283f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x)))));
}

