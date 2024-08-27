struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1005f, -493f), vec2<f32>(-1024f, -1279f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1906f, -1389f), vec2<f32>(1251f, -1000f))))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-418f, _wgslsmith_f_op_f32(step(421f, -1151f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(423f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, -1572f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(699f, 391f) - vec2<f32>(-1000f, -914f))))));
    let var_1 = select(max(firstTrailingBit(countOneBits(-u_input.a)), arg_0.a), -33827i, false);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 901f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1094f, var_0.x), _wgslsmith_div_vec2_f32(vec2<f32>(-207f, var_0.x), vec2<f32>(-1738f, 1114f))))));
    let var_2 = u_input.c;
    let var_3 = arg_0.b;
    return 28939i;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<u32>) -> bool {
    var var_0 = vec3<u32>(arg_2.x, ~(~_wgslsmith_clamp_u32(arg_2.x, ~arg_2.x, arg_2.x)), countOneBits(countOneBits(_wgslsmith_sub_u32(u_input.b | 12049u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 0u), vec3<u32>(arg_2.x, 4294967295u, arg_2.x))))));
    var_0 = ~firstLeadingBit(countOneBits(vec3<u32>(u_input.c, 41306u, var_0.x) ^ vec3<u32>(0u, var_0.x, 55137u)) & _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 4294967295u, arg_2.x), vec3<u32>(1u, 5839u, var_0.x)));
    let var_1 = vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(10011u, var_0.x), _wgslsmith_add_vec2_u32(var_0.zx, var_0.zy)) << (_wgslsmith_div_u32(20113u, _wgslsmith_div_u32(0u, var_0.x) | 4294967295u) % 32u), ~select(15077u, 30288u, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var_0 = ~firstTrailingBit(select(_wgslsmith_sub_vec3_u32(min(var_1, vec3<u32>(1u, 106159u, arg_2.x)), min(var_1, vec3<u32>(4294967295u, u_input.b, var_1.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, u_input.b, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2.x, 0u), var_1)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    var var_2 = Struct_1(-1i, vec2<bool>(!(!any(vec4<bool>(true, false, false, true))), true));
    return true;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(705f - -1403f), 1274f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-718f, -345f)) + _wgslsmith_f_op_f32(-886f * -160f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(934f)), -388f) * -288f));
    var_0 = -1144f;
    var var_1 = !(!(!(-u_input.a < u_input.a)));
    var var_2 = Struct_1(~_wgslsmith_mult_i32(u_input.a, u_input.a), select(arg_0.b, !arg_0.b, vec2<bool>(arg_0.b.x, arg_0.b.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-756f))))));
    return func_4(~select(firstLeadingBit(vec3<i32>(44552i, -42755i, var_2.a)), vec3<i32>(-19587i, arg_0.a, var_2.a) << (vec3<u32>(23872u, u_input.c, u_input.b) % vec3<u32>(32u)), u_input.a > u_input.a) | -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, -21777i, 22218i), vec4<i32>(1i, 9657i, u_input.a, 0i)), func_3(arg_0), ~(-23584i)), arg_0.a, ~abs(~vec2<u32>(u_input.b, 4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_sub_i32(arg_1.a, u_input.a), select(arg_0.b, select(select(vec2<bool>(true, true), select(var_0.b, vec2<bool>(arg_0.b.x, true), vec2<bool>(arg_1.b.x, true)), select(vec2<bool>(var_0.b.x, arg_1.b.x), vec2<bool>(false, false), arg_1.b)), vec2<bool>(arg_0.b.x, func_2(arg_1)), arg_1.b.x), func_4(vec3<i32>(i32(-1i) * -26286i, _wgslsmith_sub_i32(var_0.a, 1i), 32231i), arg_1.a, ~firstLeadingBit(vec2<u32>(u_input.b, 1u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1202f, -1551f, _wgslsmith_f_op_f32(step(-677f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1967f, -796f, arg_1.b.x)) * -606f))), _wgslsmith_f_op_f32(751f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1926f + -1892f), -417f))))));
    var var_3 = arg_1.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1654f + 388f))))), -544f) - vec3<f32>(337f, -967f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-151f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    return Struct_1(74079i, select(select(var_0.b, select(arg_0.b, var_0.b, true), func_2(Struct_1(var_1.a, vec2<bool>(true, var_0.b.x)))), vec2<bool>(true, !(30217u <= u_input.b)), var_0.b));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = -_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a, arg_0.a))), _wgslsmith_div_vec2_i32(select(vec2<i32>(arg_1.x, 60312i), abs(vec2<i32>(39792i, arg_0.a)), arg_2), arg_1.yz));
    var_0 = -arg_1.yz;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-335f, -146f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1199f + 486f))))));
    var_0 = ~abs(arg_1.yx);
    let var_2 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(4294967295u, 5858u, u_input.c)), countOneBits(abs(vec3<u32>(22083u, u_input.b, u_input.b)))), _wgslsmith_div_vec3_u32(~vec3<u32>(~0u, 64514u, u_input.c), ~_wgslsmith_sub_vec3_u32(vec3<u32>(16665u, 9150u, u_input.c), firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 0u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-276f)), 1480f, arg_2 | arg_3.b.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))))) + -232f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec3<i32>(-abs(-55531i), firstLeadingBit(8340i), u_input.a);
    var var_2 = Struct_1(u_input.a, vec2<bool>(true, var_0));
    var var_3 = _wgslsmith_f_op_f32(func_5(func_1(Struct_1(1i, var_2.b), Struct_1(1i, vec2<bool>(true, var_2.b.x))), -abs(~(vec4<i32>(var_2.a, -16800i, 2147483647i, -26129i) | vec4<i32>(-4i, var_1.x, 14863i, u_input.a))), true, func_1(func_1(Struct_1(~var_2.a, !vec2<bool>(true, var_2.b.x)), func_1(Struct_1(-28398i, vec2<bool>(var_0, false)), Struct_1(var_1.x, vec2<bool>(false, false)))), func_1(Struct_1(_wgslsmith_add_i32(26252i, var_2.a), select(vec2<bool>(var_0, false), var_2.b, vec2<bool>(var_0, var_2.b.x))), Struct_1(-1i, var_2.b)))));
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(var_2.a, u_input.a), u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, -3346i, u_input.a, var_1.x), vec4<i32>(-1i, 0i, -21175i, -8004i)), vec4<i32>(var_2.a, var_2.a, -2147483647i, var_1.x) | vec4<i32>(var_2.a, 1i, 45580i, -2147483647i)) | -2147483647i), vec4<i32>(u_input.a, ~(~(-var_2.a)), var_1.x, -_wgslsmith_sub_i32(var_1.x, ~var_2.a)));
}

