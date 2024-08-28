struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(987f)), 604f, _wgslsmith_f_op_f32(-arg_1.b.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_1.b, select(vec3<bool>(arg_1.a.a, false, true), vec3<bool>(arg_1.a.a, false, true), vec3<bool>(arg_1.a.a, false, true)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b - arg_1.b) - arg_1.b) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.b.x)), _wgslsmith_f_op_f32(-arg_1.b.x), -336f)) + arg_1.b));
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f * arg_1.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.x, 1190f))))), arg_1.b.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0))) * arg_1.b));
    var var_3 = _wgslsmith_mod_vec3_i32(-vec3<i32>(abs(arg_1.d), -2147483647i, _wgslsmith_div_i32(arg_1.d, ~2147483647i)), ~(~(~vec3<i32>(arg_1.d, 12207i, arg_1.d) << (_wgslsmith_mod_vec3_u32(arg_1.c, arg_1.c) % vec3<u32>(32u)))));
    var_2 = _wgslsmith_f_op_vec3_f32(abs(arg_1.b));
    return arg_1.c;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -290f))))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1327f, 931f)) - vec2<f32>(985f, 423f))), Struct_3(Struct_1(any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1013f, 991f, 917f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-762f, 990f, -684f) * vec3<f32>(1125f, 727f, -320f))), vec3<u32>(~u_input.c.x, 21243u, u_input.c.x), -23131i), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_clamp_u32(15252u, u_input.b.x, 1u)), countOneBits(reverseBits(u_input.b.x)), u_input.b.x)), abs(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-90084i, -1i, -18889i, 1i), ~vec4<i32>(0i, 13597i, -10528i, -29262i))));
    var var_1 = -vec4<i32>(min((i32(-1i) * -2147483647i) | (var_0.d ^ var_0.d), 2147483647i), ~max(-83122i, -1i), ~(i32(-1i) * -691i), abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.d, var_0.d, 42307i, var_0.d), vec4<i32>(var_0.d, -10465i, var_0.d, -36512i))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.b.x) <= var_0.b.x), var_0.a, ~_wgslsmith_div_u32(u_input.a, countOneBits(_wgslsmith_div_u32(0u, 55517u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_div_f32(var_0.b.x, var_0.b.x))))));
    var var_3 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)), var_2.d) < -425f);
    var var_4 = Struct_1(true);
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, arg_1.b.x) - _wgslsmith_f_op_f32(-arg_2.b.x)), -192f)), vec3<u32>(abs(~countOneBits(4294967295u)), 34641u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.b, _wgslsmith_mod_vec2_u32(u_input.c, arg_1.c.zy)), vec2<u32>(~0u, arg_1.c.x))), 2147483647i);
    var var_1 = func_2();
    var_1 = arg_2.a;
    var_1 = arg_2.a;
    let var_2 = -(~(~(~(vec3<i32>(arg_1.d, arg_3.x, 1i) << (var_0.c % vec3<u32>(32u))))));
    return Struct_1(!(!var_0.a.a));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = abs(~countOneBits(1u));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~var_0, _wgslsmith_clamp_u32(reverseBits(arg_1.x), _wgslsmith_dot_vec3_u32(arg_1, arg_1), var_0)), _wgslsmith_div_u32(25875u, _wgslsmith_sub_u32(var_0, var_0) | 1u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0, 53124u), ~1u), ~(arg_1.x | var_0) & min(u_input.c.x, _wgslsmith_add_u32(u_input.a, 4294967295u))), ~49436u);
    let var_2 = Struct_1(any(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))));
    let var_3 = 1i;
    let var_4 = var_2;
    return func_4(Struct_2(func_2(), var_2, 50338u, _wgslsmith_f_op_f32(sign(arg_0))), Struct_3(var_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1671f, arg_0, 205f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1183f, arg_0) + vec3<f32>(-652f, -485f, 210f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(294f, arg_0, arg_0))))), _wgslsmith_add_vec3_u32(arg_1, reverseBits(vec3<u32>(var_0, 1u, var_1.x))), 0i), Struct_3(Struct_1(var_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(752f, arg_0, -1953f), vec3<bool>(true, var_2.a, var_4.a))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(308f, arg_0, arg_0))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.x, 7986u), vec3<u32>(u_input.a, 76528u, u_input.c.x)) << (~countOneBits(arg_1) % vec3<u32>(32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 60479i, 35895i), -vec3<i32>(0i, -991i, var_3))), vec2<i32>(_wgslsmith_mod_i32(max(var_3 ^ var_3, 8715i), min(var_3 >> (66431u % 32u), -1i)), -302i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1098f, ~(~vec3<u32>(1u, ~0u, u_input.a)));
    let var_1 = 6708u;
    var var_2 = firstTrailingBit(~(~(~(~vec4<u32>(u_input.b.x, var_1, var_1, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~min(u_input.b.x, var_1) << (min(~10700u, _wgslsmith_dot_vec4_u32(vec4<u32>(60950u, var_1, var_2.x, 0u), vec4<u32>(var_2.x, 73008u, 19384u, 22092u))) % 32u), min(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 597f)), Struct_3(Struct_1(false), vec3<f32>(1101f, -247f, -588f), vec3<u32>(u_input.c.x, 77202u, 4294967295u), -2147483647i), u_input.a).x, 4294967295u), select(max(21729u, ~32965u), _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(6554u, var_2.x)), !var_0.a != any(vec3<bool>(var_0.a, false, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f), -864f)));
}

