struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.c.x & 2147483647i;
    let var_1 = u_input.d;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1221f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1368f + 1298f))))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = Struct_2(~(u_input.c.xx | vec2<i32>(-13171i, ~(-45635i))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, arg_2, 1u), firstTrailingBit(vec3<u32>(1u, arg_2, 41896u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(u_input.b, u_input.b, arg_2), vec3<u32>(10181u, arg_2, arg_2))), ~vec3<u32>(4294967295u, u_input.b, u_input.b)));
    var var_1 = u_input.c.xy;
    var_0 = Struct_2(var_0.a, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.b.x) & var_0.b, vec3<u32>(68047u, 47025u, 94909u))), var_0.b));
    var_1 = u_input.d.zy;
    var var_2 = u_input.b;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~9466u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, u_input.b, 0u), vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x)), u_input.b, 0u), _wgslsmith_mod_vec4_u32(~vec4<u32>(22962u, u_input.b, 2939u, 36817u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 39578u, var_0.b.x, 42469u), vec4<u32>(arg_2, 1u, 4294967295u, u_input.b)))), abs(~1u)) < (~arg_2 ^ 39078u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(420f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-126f, 2765f, false)), -1896f, false)))), _wgslsmith_dot_vec4_i32((u_input.d >> (vec4<u32>(4294967295u, 53163u, arg_2.b.x, u_input.b) % vec4<u32>(32u))) & ~(-u_input.d), _wgslsmith_add_vec4_i32(u_input.d, firstTrailingBit(-u_input.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(677f, -1000f, -1000f, -964f), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(true, true, true, arg_1), vec4<bool>(false, true, arg_1, false), vec4<bool>(false, true, true, true)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-549f, 1356f, -822f, 762f), vec4<f32>(-1886f, 1149f, 1589f, 768f), vec4<bool>(arg_1, true, arg_1, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-963f, 488f, 912f, 622f) - vec4<f32>(430f, -1216f, 381f, -204f)))), vec3<i32>(-16934i << (u_input.b % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.yx, -vec2<i32>(-1i, -1i)), u_input.a), _wgslsmith_sub_i32(1i, select(_wgslsmith_clamp_i32(u_input.a, -2147483647i, arg_2.a.x), 78085i, true))));
    let var_1 = ~abs(-u_input.d.yzx);
    let var_2 = ~0u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.c.xw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-150f, var_0.c.x), var_0.c.zy) + var_0.c.zw)) + vec2<f32>(-915f, var_0.c.x)));
    let var_4 = !(!(!vec2<bool>(1858i >= var_0.d.x, arg_1)));
    return _wgslsmith_f_op_f32(ceil(1356f));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_4 {
    var var_0 = firstLeadingBit(max(~vec2<u32>(u_input.b, u_input.b), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, 133666u)))) | ~abs(_wgslsmith_add_vec2_u32(abs(vec2<u32>(41464u, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.zx), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2013f, arg_1.x), vec2<f32>(-1238f, arg_1.x)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-984f, _wgslsmith_f_op_f32(exp2(arg_0.a))))));
    return arg_2;
}

fn func_1() -> Struct_4 {
    return func_5(func_2(), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(u_input.b, func_3(762f, Struct_4(645f, u_input.a, vec4<f32>(904f, -601f, 1667f, 1785f), u_input.d.yyw), 16890u), Struct_2(u_input.d.yy, vec3<u32>(u_input.b, 29406u, u_input.b)))), func_2().a, _wgslsmith_f_op_f32(-465f * _wgslsmith_f_op_f32(abs(-1000f))), 1f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-855f, _wgslsmith_f_op_f32(1112f * 1112f), -372f, _wgslsmith_f_op_f32(-385f - 911f))))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-629f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1750f)))), -countOneBits(1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(249f, 2042f, -376f, -1657f)) * vec4<f32>(348f, 172f, 468f, -962f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 223f, -328f, -603f), vec4<f32>(446f, -757f, 1045f, 730f)), vec4<f32>(-158f, -669f, -552f, 1160f), vec4<bool>(true, true, true, true)))), u_input.d.wyy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~1u, ~(~_wgslsmith_mult_u32(34382u, u_input.b))) << (min(4294967295u, ~_wgslsmith_mod_u32(~26515u, u_input.b)) % 32u);
    var var_1 = true;
    var var_2 = func_1();
    var_2 = Struct_4(_wgslsmith_f_op_f32(func_4(1u, true, Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.b, 2147483647i), var_2.d.xy ^ vec2<i32>(-17093i, var_2.d.x)), vec3<u32>(4294967295u, u_input.b, ~u_input.b)))), var_2.d.x, var_2.c, vec3<i32>(var_2.b, _wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(var_2.b, 2147483647i)), -2147483647i) ^ -max(var_2.d, -vec3<i32>(57900i, var_2.d.x, 9975i)));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(-9746i, var_2.d.x, var_2.d.x)), vec4<i32>(14174i, ~func_5(Struct_3(-775f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, -161f, var_2.a, var_3.a)), func_5(var_3, var_2.c, Struct_4(var_2.a, var_2.d.x, var_2.c, vec3<i32>(-41347i, u_input.d.x, 16560i)))).b, -_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(var_2.d.x, 1i)), 9675i), ~reverseBits(~(vec2<u32>(25067u, 1u) ^ vec2<u32>(u_input.b, 12308u))));
}

