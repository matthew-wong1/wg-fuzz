struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = 322f;

var<private> global2: u32 = 73719u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<f32> {
    global0 = u_input.b.x;
    global0 = u_input.b.x & u_input.c;
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_mult_u32(u_input.c, 43587u)), 0u), u_input.b.x), 4294967295u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1700f, 985f)) * -995f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(627f + -800f), 1000f)) + _wgslsmith_f_op_f32(min(180f, -613f))), 910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1714f, -101f))))));
    var var_2 = -942f;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(881f, -691f, -1182f, var_1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-709f, var_1.x, var_1.x, 448f), vec4<f32>(var_1.x, 476f, var_1.x, 189f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-392f, var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, 132f, var_1.x))))))), false));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3())));
    var var_1 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(149f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -393f))), -863f);
    global2 = 4294967295u | (_wgslsmith_sub_u32(21043u, _wgslsmith_sub_u32(~u_input.c, _wgslsmith_sub_u32(u_input.c, 0u))) & _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(105u, u_input.c), u_input.c, 55989u), u_input.b.x));
    return 589f;
}

fn func_4(arg_0: f32, arg_1: bool) -> f32 {
    global0 = ~firstTrailingBit(66869u);
    global1 = _wgslsmith_f_op_f32(-arg_0);
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d, 1i, u_input.d) ^ -1i, -58646i), 2147483647i), ~vec4<i32>(-u_input.a, ~u_input.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, u_input.d), vec3<i32>(-33092i, u_input.d, u_input.a))), -firstTrailingBit(0i)), vec4<bool>(!all(select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, false, true, arg_1))), !(~0u < u_input.c), any(!(!vec2<bool>(false, arg_1))), arg_1), -_wgslsmith_mult_i32(-1i, -31626i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -332f) * vec2<f32>(arg_0, -2160f))))));
    global0 = 1920u;
    let var_1 = Struct_1(4793i, reverseBits(var_0.b), select(select(!vec4<bool>(var_0.c.x, true, false, true), !(!vec4<bool>(var_0.c.x, var_0.c.x, false, arg_1)), vec4<bool>(!arg_1, arg_0 <= -144f, true, true)), var_0.c, true), max(var_0.a, ~(-2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_div_f32(-435f, 2539f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = 0u;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), arg_0.e.x, true)), true)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(arg_0.e.x * 1334f), any(arg_0.c.wy)))));
    var var_1 = Struct_1(reverseBits(1i), select(firstTrailingBit(_wgslsmith_clamp_vec4_i32(arg_2, ~arg_0.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, arg_1.x, -32618i, 1i), arg_0.b, arg_0.b))), vec4<i32>(-4689i, i32(-1i) * -1i, _wgslsmith_mod_i32(min(arg_1.x, -54352i), arg_0.d), abs(63687i)), arg_0.c.x), !arg_0.c, _wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(-arg_1.x, _wgslsmith_div_i32(arg_2.x, u_input.a), arg_2.x)), arg_0.a), vec2<f32>(1f, _wgslsmith_f_op_f32(-1074f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.e.x, arg_0.e.x, arg_3))))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec2_u32(u_input.b << (u_input.b % vec2<u32>(32u)), u_input.b);
    return arg_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(((2147483647i == u_input.a) && any(vec3<bool>(true, false, false))) | true), !any(vec3<bool>(u_input.a != u_input.a, func_1(Struct_1(u_input.d, vec4<i32>(-13656i, -2389i, -65819i, -41211i), vec4<bool>(true, false, false, false), -7890i, vec2<f32>(-313f, 966f)), vec3<i32>(2333i, 1i, u_input.a), vec4<i32>(0i, -57519i, u_input.d, u_input.d), false), any(vec3<bool>(false, false, false)))), true);
    global0 = ~(~u_input.c);
    let var_1 = true;
    let var_2 = Struct_1(select(u_input.a, u_input.d, !(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 18625i, u_input.d, 0i), vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d)) == _wgslsmith_mod_i32(36830i, u_input.d))), select(max(-countOneBits(vec4<i32>(0i, u_input.d, 2147483647i, u_input.a)), -(vec4<i32>(57739i, 1i, 23255i, u_input.d) >> (vec4<u32>(22689u, 8234u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), ~vec4<i32>(select(u_input.d, 31152i, var_0.x), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 56974i), vec2<i32>(u_input.d, -1i)), u_input.d), !(!(!vec4<bool>(var_0.x, false, false, true)))), select(select(select(vec4<bool>(var_1, true, var_0.x, var_1), !vec4<bool>(false, var_1, var_1, var_0.x), select(vec4<bool>(var_1, var_0.x, var_1, true), vec4<bool>(true, var_1, var_1, true), var_1)), vec4<bool>(!var_1, all(vec4<bool>(false, var_0.x, true, true)), false, true), var_1), vec4<bool>(true || any(vec2<bool>(var_0.x, var_0.x)), !any(vec2<bool>(true, var_0.x)), func_1(Struct_1(2147483647i, vec4<i32>(u_input.a, u_input.d, 21407i, 50908i), vec4<bool>(var_1, true, false, var_1), u_input.d, vec2<f32>(-555f, -1000f)), vec3<i32>(u_input.d, u_input.a, 1i) ^ vec3<i32>(-2147483647i, -2147483647i, -36887i), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), true), var_0.x), any(vec3<bool>(u_input.b.x > u_input.c, true, true))), ~_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.d, u_input.a), vec3<i32>(u_input.a, -8446i, u_input.a)), ~(~vec3<i32>(u_input.d, -4702i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-215f, -1566f) + vec2<f32>(-1366f, -1006f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(685f, -359f), vec2<f32>(-1885f, -1267f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x));
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-(~_wgslsmith_add_vec2_i32(var_2.b.yy, var_4.b.yz)), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(var_4.b.wzx ^ vec3<i32>(var_2.a, var_4.d, var_2.b.x), vec3<i32>(-17628i, 4056i, -1i)))), vec4<i32>(firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_i32(var_2.b.x, 2147483647i, var_4.d))), _wgslsmith_div_i32(var_4.a, _wgslsmith_clamp_i32(14284i | var_4.b.x, abs(1i), 62065i)), var_4.a, 0i), _wgslsmith_f_op_f32(select(var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.e.x), 1219f), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.d, -4476i), vec2<i32>(var_2.a, var_4.b.x), vec2<bool>(var_2.c.x, false)), var_4.b.wx) != _wgslsmith_dot_vec2_i32(max(var_2.b.xy, var_2.b.yw), vec2<i32>(-50503i, u_input.a)))));
}

