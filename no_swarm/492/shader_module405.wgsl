struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-13502i, -21597i, -103409i), vec3<i32>(-48169i, 35062i, 1i), vec3<i32>(34180i, 0i, 14438i), vec3<i32>(-33080i, i32(-2147483648), 22898i), vec3<i32>(24685i, -1i, -1i), vec3<i32>(-70797i, 3159i, -58415i), vec3<i32>(i32(-2147483648), -24706i, -1i), vec3<i32>(-9834i, -38903i, 1i), vec3<i32>(i32(-2147483648), -23775i, -455i), vec3<i32>(i32(-2147483648), 17339i, 0i), vec3<i32>(-4901i, 1i, 1i), vec3<i32>(46807i, 2147483647i, 0i), vec3<i32>(-62185i, 0i, 16183i), vec3<i32>(30047i, i32(-2147483648), -46425i), vec3<i32>(-12177i, 58962i, 30213i), vec3<i32>(0i, -17999i, -1i), vec3<i32>(8500i, 0i, 0i), vec3<i32>(-58466i, -1i, 0i), vec3<i32>(0i, 0i, -1i), vec3<i32>(1i, 1i, 0i), vec3<i32>(1i, -11789i, -1i), vec3<i32>(13928i, 1i, 39257i), vec3<i32>(1i, 1i, -7309i), vec3<i32>(11187i, -18283i, -27620i), vec3<i32>(0i, 5375i, 9518i), vec3<i32>(2147483647i, -28434i, -18759i), vec3<i32>(28140i, -42390i, 2147483647i), vec3<i32>(0i, -33829i, -1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 4888i, -9698i), vec3<i32>(-1i, 1i, 27403i));

var<private> global2: vec3<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32) -> bool {
    global0 = Struct_1(!(!any(!vec3<bool>(global2.x, false, true))), reverseBits(_wgslsmith_mod_u32(global3.b, global0.b << (0u % 32u)) >> (abs(_wgslsmith_mod_u32(44935u, global3.b)) % 32u)), !(select(global0.b, ~0u, global3.a) > ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b, 0u), vec2<u32>(global3.b, 28576u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(828f)))))));
    var var_0 = Struct_1(any(global2.zy), 4294967295u, !(!(global3.d >= _wgslsmith_f_op_f32(-global3.d))), _wgslsmith_f_op_f32(-1142f * _wgslsmith_f_op_f32(-global0.d)));
    let var_1 = max(~25604u, global3.b);
    var var_2 = max(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, 52612u, global0.b), vec3<u32>(1u, var_1, var_0.b)) & _wgslsmith_sub_vec3_u32(vec3<u32>(14047u, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0.b), vec3<u32>(global3.b, 15533u, var_1))), vec3<u32>(~(~41130u), global0.b, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 0u, var_0.b, 32830u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 41230u, global3.b, 34473u), vec4<u32>(global0.b, global3.b, global0.b, global0.b))), _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(var_0.b, 22986u)), 1u << (var_1 % 32u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1, global0.b, 0u), vec3<u32>(11480u, 4294967295u, 0u)) << (~vec3<u32>(1u, 5103u, 23030u) % vec3<u32>(32u))));
    global3 = Struct_1(global0.d > 781f, ~4294967295u, any(select(select(vec3<bool>(arg_1.x, global2.x, true), select(vec3<bool>(false, false, true), vec3<bool>(global3.a, false, true), vec3<bool>(false, false, true)), true), vec3<bool>(var_0.b == var_2.x, true, true), any(vec3<bool>(false, false, global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1222f)));
    return true;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_1 {
    global0 = Struct_1(all(!vec3<bool>(false, 580f <= global3.d, true)), global0.b, true, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_0 = Struct_1(all(vec3<bool>(global3.c, func_3(~vec2<i32>(41594i, 1i), vec2<bool>(false, true), reverseBits(u_input.c)), global2.x)), _wgslsmith_mod_u32(1u, firstLeadingBit(global0.b)), false, global3.d);
    let var_1 = ~(-1i);
    return Struct_1(true, ~(~(select(arg_1, 53896u, false) | 0u)), true, _wgslsmith_f_op_f32(sign(1325f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(f32(-1f) * -1433f)))), global3.b, ~vec3<i32>(arg_0.x, -4851i, arg_0.x), max(countOneBits(-max(vec2<i32>(arg_1, arg_1), arg_0.xz)), vec2<i32>(max(firstTrailingBit(u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 5143i, u_input.a.x), u_input.b)), ~abs(-2147483647i))));
    global2 = !select(!select(select(vec3<bool>(false, true, var_0.c), vec3<bool>(global0.a, global0.c, global3.c), false), select(vec3<bool>(arg_2.c, global2.x, true), vec3<bool>(global2.x, arg_2.c, true), vec3<bool>(false, global2.x, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.c, global3.c, var_0.a), all(vec3<bool>(false, false, var_0.a))), !select(vec3<bool>(true, global0.a, true), vec3<bool>(true, global2.x, true), false), vec3<bool>(global0.d < 441f, true, all(vec4<bool>(global2.x, var_0.a, true, var_0.a)))), false);
    var var_1 = _wgslsmith_f_op_f32(step(-1790f, global0.d));
    global0 = arg_2;
    global2 = vec3<bool>(arg_0.x > (_wgslsmith_add_i32(reverseBits(arg_1), _wgslsmith_div_i32(arg_0.x, u_input.c)) << (~select(var_0.b, 4011u, true) % 32u)), _wgslsmith_add_u32(27985u, global0.b) <= _wgslsmith_dot_vec3_u32(vec3<u32>(~979u, 1u, global3.b), _wgslsmith_div_vec3_u32(vec3<u32>(global0.b, global3.b, arg_2.b), vec3<u32>(global0.b, var_0.b, global3.b)) >> (vec3<u32>(5600u, 5008u, global0.b) % vec3<u32>(32u))), func_3(_wgslsmith_add_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), u_input.b.wy, u_input.a), vec2<i32>(u_input.e, arg_0.x)), min(~vec2<i32>(arg_0.x, -1i), arg_0.yy)), !select(select(global2.zx, vec2<bool>(true, true), arg_2.a), !global2.zz, global0.c), arg_0.x));
    return Struct_1(!var_0.a, global0.b, !all(!select(vec3<bool>(true, false, true), vec3<bool>(global0.a, global3.c, global3.a), true)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1571f, _wgslsmith_f_op_f32(-global3.d))) + global3.d), 0u, reverseBits(-vec3<i32>(1i, -1i, 4500i)), _wgslsmith_add_vec2_i32(abs(-vec2<i32>(-1i, 39256i)), _wgslsmith_add_vec2_i32(~vec2<i32>(-22542i, arg_1), vec2<i32>(-10797i, 1i) ^ vec2<i32>(-1i, arg_1)))).d);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(arg_1.x, 29204u, 78851u, 1u)), reverseBits(vec4<u32>(28549u, global0.b, 26639u, arg_2.b) & vec4<u32>(0u, 30428u, arg_1.x, global0.b)), vec4<bool>(true & arg_0, true || global3.a, true, global3.a)), abs(max(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.b, global3.b, global0.b, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, 8890u, arg_2.b)), ~vec4<u32>(arg_1.x, global0.b, arg_1.x, global3.b))));
    let var_1 = Struct_1(arg_2.a, _wgslsmith_mult_u32(~1u, countOneBits(~(~global0.b))), !all(!select(vec4<bool>(true, arg_2.c, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, global2.x, arg_3.x, global2.x))), -1050f);
    global2 = select(!arg_3, arg_3, var_1.a);
    global1 = array<vec3<i32>, 31>();
    global1 = array<vec3<i32>, 31>();
    return _wgslsmith_f_op_f32(select(-1195f, _wgslsmith_f_op_f32(-global0.d), !(!(!(!global0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.d, global0.d, true)), _wgslsmith_f_op_f32(select(global0.d, global3.d, global0.c))), _wgslsmith_f_op_f32(func_4(global3.b < 8848u, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.b, 4294967295u), vec2<u32>(0u, 4294967295u)), func_1(vec3<i32>(u_input.e, 1i, u_input.e), u_input.e, Struct_1(false, global0.b, true, 1000f)), select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, global0.a, true), vec3<bool>(true, true, false)))), -1937f), vec3<f32>(1587f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(max(global0.d, global3.d))), global0.d)), vec3<i32>(2147483647i >> (firstTrailingBit(global3.b ^ global3.b) % 32u), -2147483647i, u_input.d), u_input.a & vec2<i32>(max(max(u_input.e, u_input.e), _wgslsmith_clamp_i32(21505i, u_input.b.x, -15786i)), 18050i));
}

