struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global0 = ~_wgslsmith_div_u32(4294967295u, 1u);
    var var_0 = Struct_3(true, countOneBits(0u), Struct_1(max(-1i, 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-314f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, -686f, -358f, -401f)), vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-347f, 784f, 225f, -253f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1997f, -656f, 1505f, -357f), vec4<f32>(-709f, -880f, -1000f, -814f))))), ~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) | (vec4<u32>(u_input.a.x, 23541u, 4294967295u, u_input.a.x) | vec4<u32>(u_input.a.x, 0u, u_input.a.x, 47691u)))), Struct_1(17264i, _wgslsmith_f_op_f32(floor(1066f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1176f, 248f, 1195f, 1247f) - vec4<f32>(-1385f, -1441f, -1119f, -1000f)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 14511u, 1u) << (vec4<u32>(u_input.a.x, u_input.a.x, 42367u, u_input.a.x) % vec4<u32>(32u)))));
    global0 = countOneBits(42021u);
    let var_1 = -934f;
    var var_2 = true;
    return !vec2<bool>(var_0.a, !(var_0.d.a <= -69061i));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_4) -> u32 {
    global0 = 1183u;
    var var_0 = Struct_4(arg_3.a, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(select(-2147483647i, arg_0.x, false), arg_0.x), ~(-arg_3.d)), ~(-select(arg_3.d, vec2<i32>(arg_3.b.x, arg_1.d.a), vec2<bool>(false, false))), vec2<i32>(-642i, _wgslsmith_sub_i32(min(-2147483647i, 0i), 1i))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_3.c.x)), _wgslsmith_div_f32(-916f, -2311f), 1312f, arg_1.d.b), vec2<i32>(_wgslsmith_sub_i32(~arg_0.x, _wgslsmith_div_i32(arg_1.d.a, 32392i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 65790i, -2147483647i), countOneBits(vec4<i32>(-1i, -15335i, arg_0.x, 59509i))))), vec4<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(ceil(364f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.a.c.x, arg_3.e.x)) * _wgslsmith_f_op_f32(abs(arg_1.c.b))), _wgslsmith_f_op_f32(ceil(arg_3.e.x))));
    global0 = _wgslsmith_add_u32(1u, arg_3.a.a.d.x);
    var_0 = arg_3;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.x - 976f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-257f)), arg_1.c.c.x), _wgslsmith_f_op_f32(f32(-1f) * -212f)))), var_0.a.a.c.x);
    return u_input.a.x;
}

fn func_2() -> u32 {
    let var_0 = 1i;
    global0 = 11895u;
    let var_1 = Struct_5(vec4<i32>(var_0, -2147483647i, ~abs(-21306i), var_0), Struct_2(Struct_1(min(-14458i, 2844i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(118f)) * -551f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(615f, 465f, -141f, -559f) + vec4<f32>(145f, -1256f, -577f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, 1112f, -3327f, 989f))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 48157u)))));
    global0 = func_4(vec4<i32>(~(~var_1.a.x), var_1.a.x, var_0, _wgslsmith_mult_i32(_wgslsmith_sub_i32(firstLeadingBit(var_1.b.a.a), abs(19121i)), -18565i)), Struct_3(true, u_input.a.x, var_1.b.a, Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(var_1.b.a.a), -var_0, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.b + var_1.b.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a.c.x, 370f, -1000f, -143f) * var_1.b.a.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, -937f, -321f, -1335f))), var_1.b.a.d)), select(vec2<bool>(-263f >= _wgslsmith_f_op_f32(max(var_1.b.a.b, var_1.b.a.b)), true), vec2<bool>(all(func_3()), false), !(-var_0 < -38118i)), Struct_4(var_1.b, ~firstLeadingBit(_wgslsmith_mod_vec2_i32(var_1.a.xz, vec2<i32>(var_0, 1i))), vec4<f32>(var_1.b.a.b, _wgslsmith_f_op_f32(floor(var_1.b.a.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.a.b + -872f), 382f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.b - var_1.b.a.b) - var_1.b.a.b)), firstLeadingBit(abs(select(vec2<i32>(var_0, var_0), var_1.a.xz, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.b.a.c, var_1.b.a.c)) + vec4<f32>(_wgslsmith_f_op_f32(var_1.b.a.b + var_1.b.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(-616f * var_1.b.a.b), 310f))));
    let var_2 = var_1.b.a;
    return 93832u;
}

fn func_5(arg_0: u32) -> bool {
    let var_0 = Struct_1(~abs(_wgslsmith_clamp_i32(25697i, 54154i, 0i) << (~arg_0 % 32u)), -544f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-640f, -354f, -1768f, 464f) * vec4<f32>(-209f, -248f, 305f, 1505f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(334f, -644f, -1421f, 945f), vec4<f32>(259f, 1046f, 645f, 1000f)))))))), vec4<u32>(max(26043u, _wgslsmith_mod_u32(~arg_0, arg_0)), max(66708u, 88501u) | max(~0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 0u, arg_0));
    var var_1 = vec2<bool>(true, true);
    global0 = ~_wgslsmith_mod_u32(u_input.a.x, arg_0);
    var var_2 = Struct_1(0i, 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-461f, var_0.b, var_0.c.x, 546f))))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(var_0.d), var_0.d & vec4<u32>(var_0.d.x, 51542u, var_0.d.x, var_0.d.x), var_0.d), countOneBits(var_0.d)), var_0.d));
    var var_3 = Struct_5(min(vec4<i32>(_wgslsmith_sub_i32(reverseBits(var_0.a), i32(-1i) * -1i), _wgslsmith_mod_i32(firstTrailingBit(28522i), countOneBits(var_0.a)), _wgslsmith_mod_i32(-var_0.a, var_2.a), 2147483647i), ~_wgslsmith_div_vec4_i32(-vec4<i32>(1i, var_2.a, var_2.a, var_2.a), ~vec4<i32>(var_0.a, -13608i, -2147483647i, 15440i))), Struct_2(Struct_1(_wgslsmith_mod_i32(i32(-1i) * -50704i, firstLeadingBit(40897i)), _wgslsmith_f_op_f32(var_2.b * 405f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-817f, 1641f, -1042f, var_2.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.c.x, var_2.c.x, 614f))), countOneBits(vec4<u32>(52014u, 10739u, arg_0, var_2.d.x)))));
    return !((_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b - var_0.c.x))) < _wgslsmith_div_f32(var_2.b, var_0.b)) | var_1.x);
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: Struct_5) -> u32 {
    var var_0 = !func_5(~firstTrailingBit(16951u) >> ((_wgslsmith_div_u32(u_input.a.x, 1u) | func_2()) % 32u));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_2.x, 1853f)), _wgslsmith_f_op_f32(ceil(arg_0.b.a.c.x))))))), -1200f));
    global0 = _wgslsmith_clamp_u32(func_2() << (abs(arg_0.b.a.d.x) % 32u), ~(~(arg_0.b.a.d.x & arg_1.x)), ~arg_3.b.a.d.x);
    var var_2 = arg_0.b.a;
    var_0 = true;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_1(Struct_5(vec4<i32>(-1i, -2147483647i, -33666i, -1i), Struct_2(Struct_1(1i, -1330f, vec4<f32>(-365f, 629f, 1654f, 993f), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 10524u)))), vec2<u32>(u_input.a.x, u_input.a.x), vec3<f32>(-1097f, -305f, 1290f), Struct_5(vec4<i32>(2147483647i, 0i, -2147483647i, 2147483647i), Struct_2(Struct_1(-1i, 278f, vec4<f32>(439f, 402f, -106f, -735f), vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x))))), 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), select(vec2<u32>(u_input.a.x, 1u), min(vec2<u32>(0u, u_input.a.x), u_input.a.zx), true)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(8380u, 4294967295u) >> (u_input.a.yy % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 4294967295u) ^ u_input.a.zx), vec2<u32>(~u_input.a.x, u_input.a.x)));
    var var_0 = abs(u_input.a.x);
    var var_1 = ~u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1716f, -1554f, 880f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-886f, -216f, 468f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-248f, 531f, 140f))))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1752f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(287f))), _wgslsmith_f_op_f32(floor(-789f))))));
    var var_3 = false;
    let var_4 = _wgslsmith_mod_u32(u_input.a.x, reverseBits(1u));
    var_1 = firstTrailingBit(_wgslsmith_mod_u32(~(~u_input.a.x), 4294967295u >> (~var_4 % 32u)) & firstTrailingBit(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_4 & 1u, ~u_input.a.x), _wgslsmith_add_u32(var_4 & 0u, _wgslsmith_mod_u32(4103u, var_4)), ~(~u_input.a.x)), _wgslsmith_mult_u32(var_4 >> (11312u % 32u), 1u), firstTrailingBit(var_4), var_4));
}

