struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = false;
    let var_1 = vec4<bool>(true, u_input.c > _wgslsmith_sub_i32(~u_input.c, u_input.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1982f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -209f) + 1512f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-260f)), -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1300f, 1000f)) * -1330f)), true);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1446f + -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1171f, _wgslsmith_f_op_f32(trunc(1133f)))))))));
    return _wgslsmith_div_i32(firstLeadingBit(-1i), u_input.c);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2.e.x;
    let var_1 = Struct_2(arg_2.a, ~28350u ^ (~(~u_input.b) | arg_2.e.x), func_3());
    let var_2 = arg_1.yw;
    let var_3 = var_1;
    var_0 = u_input.a;
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.x, ~(~1u)) | ~(_wgslsmith_div_u32(u_input.a, 1u) >> ((35400u >> (arg_3.c.x % 32u)) % 32u)), select(1u, ~u_input.b, (-var_1.c == 1i) || arg_2.c.x));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1410f), _wgslsmith_div_vec2_f32(vec2<f32>(578f, 1000f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-356f, arg_2.a.b))), _wgslsmith_f_op_f32(-618f + _wgslsmith_f_op_f32(-386f * arg_3)))));
    let var_1 = min(firstLeadingBit(vec2<u32>(63192u, _wgslsmith_div_u32(arg_1 | 1u, ~arg_1))), vec2<u32>(96521u, _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(vec2<u32>(arg_2.b, 18611u), vec4<i32>(u_input.c, u_input.c, -37458i, u_input.c), Struct_3(arg_2.a, true, vec4<bool>(false, false, false, false), vec3<f32>(-1000f, -543f, -237f), vec3<u32>(arg_2.b, 1u, 0u)), Struct_1(vec4<f32>(844f, 475f, arg_3, arg_3), 155f, arg_2.a.c)), abs(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(51817u, 43689u, 3809u, arg_2.b), vec4<u32>(1u, 4294967295u, 1u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(14922u, arg_1, u_input.b, 40713u), vec4<u32>(43355u, 1u, 4294967295u, 1u))), select(vec4<u32>(0u, 4294967295u, arg_1, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, arg_2.b, arg_0), vec4<u32>(arg_1, u_input.a, 0u, arg_2.a.c.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))))));
    let var_2 = Struct_3(arg_2.a, !(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), !vec4<bool>(false, (arg_1 >= u_input.a) || false, true, !(u_input.a < var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2.a.a.yzw)))), ~reverseBits(vec3<u32>(1u, firstLeadingBit(arg_2.b), _wgslsmith_mult_u32(arg_2.a.c.x, var_1.x))));
    let var_3 = Struct_2(Struct_1(arg_2.a.a, 254f, ~((vec2<u32>(14632u, 24754u) | vec2<u32>(var_1.x, 0u)) ^ var_1)), arg_0, -arg_2.c);
    var var_4 = var_3;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(942f, var_3.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(392f))), var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(-1671f - -1337f))), -454f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(500f)) + _wgslsmith_f_op_f32(-var_2.a.a.x))), firstLeadingBit(_wgslsmith_sub_vec2_u32(var_3.a.c << (vec2<u32>(12193u, 1u) % vec2<u32>(32u)), vec2<u32>(var_3.a.c.x, 25493u))) << ((_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_1, arg_2.a.c), vec2<u32>(arg_1, arg_2.a.c.x), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_2.e.x), vec2<u32>(31650u, var_3.a.c.x))) & (var_1 ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(var_1.x, 29603u), arg_2.a.c))) % vec2<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(~u_input.a, firstTrailingBit(arg_2.a.c.x), ~5227u), arg_2.e);
    var var_1 = arg_2.b;
    var var_2 = arg_1;
    var_1 = var_2.b;
    var_2 = Struct_3(func_1(func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.e.x, u_input.b), vec2<u32>(arg_1.e.x, 1u) ^ var_2.a.c), _wgslsmith_div_vec4_i32(select(vec4<i32>(-4313i, -24099i, 94i, -2147483647i), vec4<i32>(u_input.c, 39278i, u_input.c, u_input.c), true), -vec4<i32>(u_input.c, u_input.c, 12187i, -2147483647i)), arg_2, func_1(~var_0.x, arg_1.e.x | 1502u, Struct_2(Struct_1(vec4<f32>(771f, -2465f, -589f, arg_2.d.x), -591f, vec2<u32>(var_0.x, 103588u)), 40000u, 19797i), _wgslsmith_f_op_f32(-209f - 761f))), _wgslsmith_clamp_u32(firstLeadingBit(45806u), _wgslsmith_sub_u32(~u_input.a, arg_2.a.c.x), var_2.a.c.x), Struct_2(Struct_1(var_2.a.a, arg_1.a.a.x, ~vec2<u32>(0u, arg_1.e.x)), _wgslsmith_mod_u32(~0u, _wgslsmith_mult_u32(var_2.e.x, 17618u)), -1i), var_2.a.b), any(select(var_2.c.zxz, !vec3<bool>(false, var_2.b, true), arg_1.c.www)), arg_1.c, _wgslsmith_f_op_vec3_f32(-arg_1.d), vec3<u32>(arg_2.e.x, ~((var_0.x >> (92834u % 32u)) ^ ~80241u), 1u));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c >> (38570u % 32u);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(508f, -802f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-961f, 2348f) + vec2<f32>(606f, 450f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-463f, 112f)))))), Struct_3(func_4(~u_input.b << (abs(u_input.a) % 32u), Struct_3(func_1(75112u, 25917u, Struct_2(Struct_1(vec4<f32>(322f, -1446f, 148f, 273f), 502f, vec2<u32>(u_input.b, 4294967295u)), u_input.a, 0i), -1244f), any(vec3<bool>(false, false, false)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, 820f, -928f)), vec3<u32>(101660u, u_input.a, 1u)), Struct_3(func_1(0u, 1u, Struct_2(Struct_1(vec4<f32>(-558f, -676f, 1541f, -784f), -214f, vec2<u32>(30550u, u_input.b)), u_input.a, u_input.c), 288f), true, select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), _wgslsmith_div_vec3_f32(vec3<f32>(2066f, -657f, -1185f), vec3<f32>(1102f, 820f, 540f)), vec3<u32>(4294967295u, u_input.b, 41008u) & vec3<u32>(0u, u_input.b, 18524u))), true, vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), false, any(vec3<bool>(false, true, true))), func_1(1u, 0u, Struct_2(func_1(4294967295u, u_input.a, Struct_2(Struct_1(vec4<f32>(-1738f, 546f, 324f, 1690f), -1000f, vec2<u32>(u_input.a, u_input.b)), 63067u, 1i), 1043f), u_input.a, u_input.c), _wgslsmith_f_op_f32(-339f + _wgslsmith_f_op_f32(f32(-1f) * -1017f))).a.zyz, vec3<u32>(1u, u_input.a >> (_wgslsmith_sub_u32(u_input.a, 1u) % 32u), ~u_input.b)));
    var var_2 = !all(select(var_1.b.c, select(var_1.b.c, var_1.b.c, false), any(var_1.b.c))) | (_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(11656u, 0u)), u_input.a ^ _wgslsmith_div_u32(var_1.b.a.c.x, 16999u)) > _wgslsmith_dot_vec4_u32(~(vec4<u32>(37590u, 24541u, var_1.b.e.x, 4294967295u) << (vec4<u32>(var_1.b.a.c.x, u_input.a, u_input.b, 72013u) % vec4<u32>(32u))), countOneBits(vec4<u32>(43274u, var_1.b.a.c.x, u_input.b, var_1.b.a.c.x)) | min(vec4<u32>(37159u, var_1.b.e.x, 1u, 17463u), vec4<u32>(u_input.a, var_1.b.e.x, 0u, 0u))));
    let var_3 = 0u;
    var var_4 = vec3<i32>(u_input.c, -2147483647i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1026f, var_1.a.x))) * var_1.b.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.a.b))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)), func_4(var_3, var_1.b, Struct_3(Struct_1(vec4<f32>(-732f, -635f, -980f, var_1.a.x), var_1.b.d.x, var_1.b.a.c), var_1.b.b, vec4<bool>(false, var_1.b.b, false, true), var_1.b.d, vec3<u32>(0u, 4294967295u, var_3))).b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1729f + var_1.a.x)))));
}

