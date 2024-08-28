struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_i32(2147483647i, u_input.c.x);
    var var_1 = !(arg_1.c.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-787f, 1338f))));
    var_1 = !arg_1.d | (-26682i >= _wgslsmith_sub_i32(firstTrailingBit(u_input.c.x), 17392i));
    var var_2 = Struct_3(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 79427u, ~29518u), arg_1.b.x, 10055u));
    let var_3 = arg_1.d;
    return !(!arg_1.d);
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec4<i32> {
    let var_0 = Struct_2(select(select(arg_0.a, !(!arg_0.a), arg_0.a), select(vec2<bool>(arg_1 | arg_1, func_3(Struct_4(vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec2<f32>(1000f, -2192f), u_input.b, vec4<f32>(-903f, 781f, -140f, -541f), false))), vec2<bool>(true, true), vec2<bool>(false, arg_1)), arg_0.a));
    var var_1 = Struct_3(u_input.a);
    return select(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -103475i) >> (vec4<u32>(6561u, 0u, 25402u, u_input.a) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i)) << (reverseBits(~vec4<u32>(u_input.b.x, 1u, var_1.a, 1u)) % vec4<u32>(32u))), vec4<i32>(min(~(-60901i), -(~2147483647i)), _wgslsmith_add_i32(-26461i, reverseBits(max(u_input.c.x, u_input.c.x))), u_input.c.x, ~(u_input.c.x >> (var_1.a % 32u)) ^ 52709i), !vec4<bool>(true, !(!arg_1), _wgslsmith_f_op_f32(step(713f, -347f)) >= _wgslsmith_f_op_f32(539f * 1411f), (u_input.c.x | -45377i) == -37491i));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1135f, 2335f, -1000f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1292f)))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-749f)))))) * -1114f));
    var var_1 = arg_1.a.x;
    var_1 = ~(~firstTrailingBit(1u));
    let var_2 = Struct_3(71612u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(var_0.yy + var_0.yz), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1097f)) + 585f), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -248f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-310f, var_0.x) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -919f) - var_0.x)))), arg_1.a.x == _wgslsmith_sub_u32(arg_1.a.x, 0u));
}

fn func_1() -> vec4<f32> {
    var var_0 = vec4<i32>(-2147483647i, 1i, u_input.c.x, 2147483647i);
    var var_1 = func_4(max(~_wgslsmith_sub_i32(0i & u_input.c.x, ~u_input.c.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 33271i, u_input.c.x), func_2(Struct_2(vec2<bool>(true, true)), true))), Struct_4(~(~_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.a)))));
    var_0 = func_2(Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, var_1.d)), vec2<bool>(var_1.d, true), vec2<bool>(var_1.d, var_1.d)), !vec2<bool>(false, var_1.d), !vec2<bool>(var_1.d, false))), var_1.d);
    var var_2 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a, 93140u, u_input.b.x, var_1.b.x)), firstLeadingBit(vec4<u32>(var_1.b.x, var_1.b.x, 13854u, u_input.b.x))), max(0u, 1u), ~57012u));
    let var_3 = (firstLeadingBit(var_0.x) & reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -650i), vec2<i32>(u_input.c.x, var_0.x)), -28i, u_input.c.x))) >> (((~countOneBits(u_input.a) >> (2964u % 32u)) >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(27899u, var_2.a, var_2.a, 31821u), vec4<u32>(var_1.b.x, 0u, 50187u, 12343u)), 1u) % 32u)) % 32u);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1142f * _wgslsmith_f_op_f32(sign(155f))), _wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f + -1064f) - _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f + var_1.a.x) - _wgslsmith_f_op_f32(floor(var_1.a.x)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = -59077i;
    let var_1 = func_4(_wgslsmith_dot_vec2_i32(u_input.c << (~vec2<u32>(1u, 37329u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.x, 0i), vec2<i32>(var_0, 2147483647i)), select(arg_3, u_input.c, true), vec2<bool>(true, false)), u_input.c)), Struct_4(vec2<u32>(0u, 4294967295u)));
    let var_2 = Struct_2(!(!(!select(vec2<bool>(false, var_1.d), vec2<bool>(false, true), var_1.d))));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.x) <= 1700f;
    var var_4 = vec2<bool>(true, true);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -753f);
    var var_1 = ~(~_wgslsmith_add_vec4_i32(vec4<i32>(-u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, 27111i, u_input.c.x) | -vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x)));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(-1709f, 104f, var_0, -974f))))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, func_4(u_input.c.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-9081i, 10929i, u_input.c.x, 0i), vec4<i32>(-1i, 46852i, u_input.c.x, var_1.x)), Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(8541u, 1u), vec2<u32>(15779u, 52073u)))).a.x, -1841f), Struct_4((u_input.b & vec2<u32>(u_input.b.x, u_input.b.x)) >> (~u_input.b % vec2<u32>(32u))), (var_1.zx ^ var_1.zx) & ~(vec2<i32>(-1i, -1i) | ~vec2<i32>(-20722i, u_input.c.x)));
    var var_3 = ~u_input.a;
    var_2 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_vec4_i32(min(~vec4<i32>(19210i, u_input.c.x, -49976i, -32598i), vec4<i32>(0i, var_1.x, -2147483647i, var_1.x) << (vec4<u32>(11710u, 2595u, 46523u, u_input.b.x) % vec4<u32>(32u))), ~(~vec4<i32>(-15625i, var_1.x, var_1.x, u_input.c.x)))), ~_wgslsmith_mult_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 34889i, -8061i), vec4<i32>(var_1.x, 263i, 40112i, 17728i)), -12754i), 0i), var_0, vec3<u32>(u_input.b.x, u_input.a, ~u_input.a), _wgslsmith_f_op_f32(-var_0));
}

