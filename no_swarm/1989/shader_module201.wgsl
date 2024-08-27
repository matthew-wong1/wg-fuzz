struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> f32 {
    global0 = !select(true & !(-1000f > arg_0.x), any(vec2<bool>(true, true)), true);
    global0 = true;
    let var_0 = u_input.b.x;
    var var_1 = Struct_2(_wgslsmith_div_f32(-473f, arg_0.x) == 104f, vec3<i32>(firstLeadingBit(abs(arg_1.x)), -max(_wgslsmith_add_i32(0i, -16679i), ~(-2147483647i)), u_input.a.x));
    let var_2 = !vec4<bool>(var_1.a, false, true, false);
    return arg_0.x;
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(2234i, (~var_0.a.x & (var_0.a.x << (20769u % 32u))) >> ((28259u >> (_wgslsmith_clamp_u32(67129u, 42828u, 4294967295u) % 32u)) % 32u)), min(_wgslsmith_sub_i32(-1i, -6644i), 0i), u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, -403f)), _wgslsmith_f_op_f32(-984f - -1000f)), ~(~firstLeadingBit(var_1))))));
    let var_3 = Struct_4(Struct_1(-(~(vec4<i32>(2147483647i, -1i, 0i, -1i) << (vec4<u32>(arg_1, 4294967295u, 21149u, 53745u) % vec4<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1402f, var_2) - vec2<f32>(var_2, 192f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2, 228f))))))));
    return Struct_4(Struct_1(var_3.a.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(1531f + -595f)), _wgslsmith_f_op_vec2_f32(-var_3.a.b)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = Struct_1(arg_2.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_2.a.b.x, arg_2.a.b.x), vec3<i32>(38078i, 25050i, u_input.c)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b.x, var_0.b.x, -2183f, 421f)))))));
    global0 = true;
    let var_2 = 1936u;
    global0 = (0u > (firstLeadingBit(1u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_2, 4294967295u, arg_0.x), vec4<u32>(u_input.e, var_2, 0u, arg_1)) % 32u))) && (any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)) && true);
    return vec2<bool>(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true), select(false, false, false))), false);
}

fn func_1() -> StorageBuffer {
    global0 = any(select(vec2<bool>(select(u_input.c, u_input.a.x, true) > ~2147483647i, false), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), func_4(vec3<u32>(u_input.e, 42618u, u_input.d), ~0u, func_2(Struct_5(-1i), 0u, Struct_3(vec2<i32>(-13303i, 51624i), true))), (4294967295u ^ u_input.b.x) > _wgslsmith_mod_u32(0u, 36071u)), 1f >= _wgslsmith_f_op_f32(round(func_2(Struct_5(0i), u_input.d, Struct_3(vec2<i32>(u_input.c, 33428i), false)).a.b.x))));
    global0 = !any(vec2<bool>(true, true));
    var var_0 = ~(~u_input.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1f, -251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1828f, 1000f) - 1234f) * _wgslsmith_f_op_f32(f32(-1f) * -1129f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-627f))))), -2107f) * vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1558f)) + _wgslsmith_f_op_f32(f32(-1f) * -154f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(189f * 1000f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-247f, 1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(305f, 1000f), vec2<f32>(-942f, 493f)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-29290i, 1i, u_input.a.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(2147483647i, u_input.c, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1405f))))));
    var var_2 = func_2(Struct_5(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(1i | u_input.c, 1i))), ~u_input.d, Struct_3(max(-u_input.a, vec2<i32>(-4150i, u_input.c) & ~u_input.a), false)).a.a.x;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.www * var_1.yyz))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1180f), 272f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1203f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f) + _wgslsmith_f_op_f32(sign(var_1.x))))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, ~u_input.c, _wgslsmith_mult_i32(9246i, i32(-1i) * -51148i), -abs(u_input.c)), max(vec4<i32>(-42873i, 2147483647i, 8373i, u_input.c) ^ countOneBits(vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, u_input.c)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, -41620i, -4824i), vec4<i32>(u_input.c, -35783i, 55985i, -18795i)), max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 20494i), vec4<i32>(-7628i, -1i, 0i, u_input.a.x)), true))), 5884i, var_1.x, var_1.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 192f;
    var var_1 = Struct_5(10193i);
    global0 = var_1.a == firstTrailingBit(-493i);
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d >> (u_input.e % 32u), 16596u), 4294967295u), 2140u);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(509f * _wgslsmith_div_f32(406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) - 554f))));
    global0 = -2147483647i > (_wgslsmith_mod_i32(countOneBits(_wgslsmith_add_i32(var_1.a, u_input.c)), _wgslsmith_add_i32(firstLeadingBit(3188i), u_input.c)) | -2147483647i);
    let x = u_input.a;
    s_output = func_1();
}

