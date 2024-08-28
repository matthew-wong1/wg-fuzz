struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-9470i, true, vec2<f32>(-142f, 1215f), vec2<f32>(-1281f, 1000f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec2<f32> {
    let var_0 = arg_1;
    global0 = Struct_1(~(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 48189i, arg_2), vec3<i32>(-1i, global0.a, -2147483647i)), -arg_1.a)), !(firstTrailingBit(~arg_3.x) > ~u_input.b.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-336f - _wgslsmith_f_op_f32(sign(839f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)));
    let var_1 = true;
    global0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2, _wgslsmith_clamp_i32(~u_input.c, select(global0.a, 2147483647i, var_0.b), select(-1i, 2147483647i, var_1))), 1i), !any(select(vec4<bool>(false, false, true, var_1), vec4<bool>(arg_1.b, var_0.b, true, false), false)) & (false || !(var_0.b & var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.d))) - vec2<f32>(_wgslsmith_f_op_f32(sign(281f)), arg_1.c.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)))));
    global0 = Struct_1(var_0.a, true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1375f, -1085f) - vec2<f32>(var_0.d.x, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1476f, global0.d.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 1198f) + vec2<f32>(global0.c.x, -411f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(547f, -1042f)), _wgslsmith_f_op_f32(f32(-1f) * -1951f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-415f, -2045f), _wgslsmith_f_op_vec2_f32(-arg_1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(min(-725f, global0.d.x))))));
    return _wgslsmith_f_op_vec2_f32(-arg_1.d);
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    let var_0 = Struct_1(global0.a, true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-647f, global0.c.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_clamp_vec2_u32(u_input.a.zz, vec2<u32>(u_input.d.x, 26255u), u_input.a.yz), Struct_1(global0.a, true, vec2<f32>(499f, global0.d.x), vec2<f32>(-138f, arg_0)), firstTrailingBit(arg_1.x), vec3<u32>(1u, 4294967295u, u_input.d.x) | u_input.d.wxz)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -541f))))));
    var var_1 = Struct_1(_wgslsmith_mod_i32(arg_1.x, global0.a), !global0.b || (~1i < _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, -33830i), select(vec3<i32>(global0.a, u_input.c, 20918i), arg_1.wyz, vec3<bool>(true, global0.b, arg_3)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1707f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1071f - global0.c.x) * _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(667f, _wgslsmith_f_op_f32(max(-1183f, 224f)))))));
    let var_2 = Struct_1(global0.a, true, _wgslsmith_f_op_vec2_f32(-var_1.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * _wgslsmith_f_op_f32(trunc(-1640f)))), var_1.d.x));
    var_1 = Struct_1(arg_2.x, var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(select(vec2<u32>(12953u, u_input.d.x), u_input.b.yy, vec2<bool>(global0.b, var_2.b)), var_0, arg_2.x | var_2.a, u_input.b.zxy)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-946f * -576f), -321f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c * var_0.d) - vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(-var_2.d.x))));
    let var_3 = _wgslsmith_f_op_f32(-arg_0);
    return 2117f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(u_input.e, 0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_2(global0.d.x, -_wgslsmith_div_vec4_i32(vec4<i32>(global0.a, global0.a, 0i, 2147483647i), vec4<i32>(global0.a, 53389i, u_input.c, u_input.c)), vec3<i32>(firstLeadingBit(global0.a), u_input.c << (1u % 32u), -21781i), global0.b)), -1784f, _wgslsmith_f_op_f32(1149f - global0.d.x))));
    global0 = Struct_1(37645i, select(false & global0.b, true, global0.b), _wgslsmith_div_vec2_f32(var_1.zx, _wgslsmith_f_op_vec2_f32(-var_1.zz)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0.c.x, var_1.x)))), var_1.x)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(var_0, var_0) & vec2<u32>(var_0, 0u), Struct_1(-1i, global0.b, var_1.xy, vec2<f32>(var_1.x, -884f)), select(global0.a, -1i, global0.b), ~vec3<u32>(12622u, u_input.a.x, 36592u))).x, _wgslsmith_add_vec4_i32(~vec4<i32>(global0.a, -2147483647i, -2147483647i, 822i), vec4<i32>(-1i, 12372i, 2147483647i, -28564i) >> (u_input.d % vec4<u32>(32u))), ~max(vec3<i32>(1i, u_input.c, 1i), vec3<i32>(-43434i, u_input.c, 0i)), any(select(vec4<bool>(false, true, true, global0.b), vec4<bool>(global0.b, false, global0.b, false), true))))));
    var var_2 = Struct_1(14i, select(true, !all(vec3<bool>(global0.b, global0.b, global0.b)) | any(vec2<bool>(false, global0.b)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(642f - global0.c.x), _wgslsmith_f_op_f32(var_1.x - global0.c.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-506f * _wgslsmith_f_op_f32(var_1.x + global0.c.x)) + _wgslsmith_f_op_f32(1004f - _wgslsmith_f_op_f32(exp2(global0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - global0.c.x))));
    var var_3 = _wgslsmith_sub_u32(abs(~var_0 << (1u % 32u)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(firstTrailingBit(var_0), _wgslsmith_sub_u32(var_0, 1u))));
    return Struct_1(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(var_2.c - global0.d), vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x * var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1299f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = Struct_1(-global0.a, u_input.a.x == firstLeadingBit(_wgslsmith_mod_u32(10055u, ~u_input.d.x)), global0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(trunc(705f)))))));
    let var_1 = func_1();
    global0 = var_1;
    global0 = Struct_1(_wgslsmith_div_i32((_wgslsmith_mult_i32(u_input.c, var_1.a) << ((u_input.d.x ^ 4294967295u) % 32u)) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.e), firstLeadingBit(7745u)) % 32u), ~abs(-var_1.a)), all(vec3<bool>(!var_0.b, true, false)) | (true | var_1.b), var_1.d, global0.d);
    var var_2 = countOneBits(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 5926u), vec3<u32>(u_input.b.x, 124842u, 1u)), 13295u, ~min(u_input.a.x, u_input.b.x)));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1656f + global0.c.x), vec4<i32>(-global0.a, u_input.c, reverseBits(var_0.a), firstLeadingBit(global0.a) << ((1u << (0u % 32u)) % 32u)), _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(-2147483647i, -20996i, var_0.a)), vec3<i32>(~global0.a, 13937i, -73500i)), all(select(!vec3<bool>(var_1.b, true, false), !vec3<bool>(true, var_1.b, var_0.b), select(vec3<bool>(var_1.b, var_1.b, false), vec3<bool>(var_1.b, var_1.b, true), vec3<bool>(true, var_0.b, var_0.b)))))), -165f));
    let var_4 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wyw, ~(~u_input.d.wxw)), vec3<u32>(min(var_2.x, 13456u), u_input.e, 13974u)), ~(~select(vec3<u32>(var_2.x, u_input.b.x, u_input.e), u_input.a, true)));
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

