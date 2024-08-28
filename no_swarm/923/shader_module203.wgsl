struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = arg_0.a;
    var_0 = arg_0.b.a;
    var var_1 = arg_0;
    let var_2 = u_input.a;
    let var_3 = -1000f;
    return var_1.b.c.wx;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(sign(arg_2.a)), Struct_1(arg_3.a, ~_wgslsmith_add_u32(abs(0u), u_input.c << (7874u % 32u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 2059u), abs(arg_3.c >> (vec4<u32>(50294u, 119476u, 0u, 0u) % vec4<u32>(32u))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f * -1000f)), ~65109u, vec4<u32>(var_0.b.b, 1u, 57784u, u_input.c));
    var var_2 = (~u_input.a > _wgslsmith_clamp_i32(1i, -arg_0.x, arg_0.x)) && false;
    var_0 = Struct_2(192f, Struct_1(arg_2.a, ~923u, var_0.b.c >> (select(select(var_0.b.c, vec4<u32>(var_0.b.b, 4294967295u, 15729u, 0u), vec4<bool>(false, false, false, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(80772u, 0u, arg_2.b, 17953u), vec4<u32>(arg_3.b, 14243u, arg_2.c.x, var_1.b)), true) % vec4<u32>(32u))));
    var_2 = false;
    return select(vec2<bool>(true & select(true, all(vec4<bool>(false, true, false, false)), true), select(true, !(var_0.b.b <= u_input.b), true)), select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, false), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), !(select(false, false, false) && true)), true);
}

fn func_2() -> vec2<bool> {
    var var_0 = -1272f;
    var_0 = -905f;
    let var_1 = -2147483647i;
    var var_2 = false;
    var_2 = true;
    return func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(-5828i, 0i), i32(-1i) * -19510i, u_input.a, abs(u_input.a ^ 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, u_input.a, u_input.a), vec4<i32>(var_1, var_1, -82032i, -8574i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_1), vec2<i32>(var_1, -2147483647i)), u_input.a, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(16435i, var_1, 28348i, u_input.a), vec4<i32>(var_1, -1i, -15920i, u_input.a)))), _wgslsmith_mod_vec2_u32(~func_3(Struct_2(1000f, Struct_1(113f, 1u, vec4<u32>(1u, 63382u, 32168u, 50658u))), vec4<u32>(u_input.c, 47156u, 17480u, u_input.b)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(27064u, u_input.c), vec2<u32>(u_input.b, u_input.c)))) << (abs(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(36123u, u_input.c), vec2<u32>(1u, 0u)), firstLeadingBit(vec2<u32>(4294967295u, 0u)))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-421f, 321f) - _wgslsmith_f_op_f32(f32(-1f) * -1355f))), firstLeadingBit(u_input.b), vec4<u32>(select(u_input.c, reverseBits(21905u), all(vec3<bool>(true, false, false))), abs(u_input.c) >> (u_input.c % 32u), _wgslsmith_add_u32(u_input.b, u_input.b) >> (u_input.c % 32u), min(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c & 4294967295u))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1045f))))), u_input.b, min(vec4<u32>(~43799u, 1u, 0u, abs(1u)), ~(~vec4<u32>(36195u, u_input.b, 11111u, 1u)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~(-_wgslsmith_mod_i32(u_input.a, u_input.a)));
    let var_1 = Struct_2(-459f, arg_0);
    let var_2 = arg_0.c.x;
    let var_3 = !func_2();
    let var_4 = var_1;
    return var_4.b;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(730f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.a)) - arg_0.a)), _wgslsmith_f_op_f32(arg_0.a + arg_0.a), arg_0.a);
    var var_1 = -1667f;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-958f)), 231f, _wgslsmith_f_op_f32(max(arg_0.a, 1627f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1607f, arg_0.a), vec3<f32>(700f, var_0.x, -945f))))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1000f))));
    var var_2 = ~reverseBits(~_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), max(arg_0.b, 4294967295u), select(arg_0.c.x, u_input.c, true)));
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~select(u_input.a, ~(-u_input.a), !select(true, true, false)), u_input.a, countOneBits(u_input.a));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(-293f, 13220u, vec4<u32>(u_input.b, u_input.c, 36046u, u_input.c))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(1498f, 0u, vec4<u32>(1u, 4294967295u, 0u, 1u)))) + _wgslsmith_f_op_f32(758f + -493f))), -1158f)), func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(876f, 1139f) * _wgslsmith_f_op_f32(f32(-1f) * -326f)), ~(~0u), abs(_wgslsmith_add_vec4_u32(vec4<u32>(34849u, u_input.c, 22509u, 4294967295u), vec4<u32>(46121u, 4294967295u, u_input.b, 1u))))));
    let var_2 = 0u;
    var var_3 = -_wgslsmith_mod_vec4_i32(select(vec4<i32>(-2147483647i | var_0.x, _wgslsmith_dot_vec2_i32(var_0.xx, var_0.xx), -var_0.x, _wgslsmith_sub_i32(-1i, u_input.a)), firstTrailingBit(~vec4<i32>(var_0.x, var_0.x, var_0.x, 0i)), false), vec4<i32>(~var_0.x | 1i, var_0.x, u_input.a, -25628i & _wgslsmith_div_i32(62609i, u_input.a)));
    var var_4 = ~vec2<u32>(var_1.b.b, _wgslsmith_mod_u32(~25563u, _wgslsmith_dot_vec3_u32(~vec3<u32>(43266u, u_input.b, 39540u), vec3<u32>(4294967295u, 43327u, var_2))));
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(trunc(1100f))) - vec3<f32>(-869f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(max(1550f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(643f, 1792f) + -2316f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~var_1.b.c, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(31429u, var_1.b.c.x, var_1.b.b)), _wgslsmith_add_vec3_u32(vec3<u32>(var_4.x, 22819u, var_4.x) << (var_1.b.c.wzw % vec3<u32>(32u)), vec3<u32>(u_input.b, var_2, 0u))), select(vec3<u32>(u_input.b, var_2, var_2), var_1.b.c.yzy, vec3<bool>(true, true, true)) << ((countOneBits(vec3<u32>(var_4.x, 58758u, 0u)) >> (vec3<u32>(38692u, var_4.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, _wgslsmith_f_op_f32(var_5.x + var_5.x), 1f, 384f))));
}

