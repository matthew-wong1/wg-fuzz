struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = -(~_wgslsmith_clamp_i32(abs(arg_0), u_input.c, u_input.c)) ^ (96243i & _wgslsmith_clamp_i32(u_input.c, u_input.c, _wgslsmith_mod_i32(-55668i, _wgslsmith_add_i32(-30739i, arg_0))));
    let var_1 = ~(~(vec3<u32>(max(1u, 0u), u_input.a ^ 0u, u_input.b.x) | vec3<u32>(1u, ~1u, 38224u)));
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    let var_1 = ~abs(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 32075u, 1u), vec4<u32>(87225u, 0u, 11829u, u_input.b.x) << (vec4<u32>(32093u, u_input.a, u_input.b.x, 4294967295u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a))));
    let var_2 = -abs(_wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(u_input.c, 1i, u_input.c, -2147483647i)), abs(vec4<i32>(u_input.c, -14598i, u_input.c, u_input.c))));
    var var_3 = var_0;
    var_3 = true;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(761f)), _wgslsmith_f_op_f32(f32(-1f) * -790f), func_3(2147483647i, var_0))) + _wgslsmith_f_op_f32(1000f * -992f)), -738f), -1084f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-461f, -1000f))))), -1190f);
    let var_1 = func_2();
    let var_2 = Struct_3(arg_0.x, arg_0.yy, var_0.b, ~reverseBits(arg_0.zx));
    var var_3 = var_2;
    var_3 = var_2;
    return var_2;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(1305f - 960f)))), _wgslsmith_f_op_f32(-1512f - _wgslsmith_div_f32(func_2().a.x, 1587f)), -546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), arg_2))) * 1020f));
    let var_1 = func_2();
    var var_2 = _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-617f - _wgslsmith_f_op_f32(-arg_2)));
    var var_3 = -1i;
    var var_4 = firstLeadingBit(~min(_wgslsmith_mod_i32(2147483647i, u_input.c), firstLeadingBit(~(-1i))));
    return -countOneBits(vec3<i32>(u_input.c >> (~63616u % 32u), -_wgslsmith_clamp_i32(u_input.c, u_input.c, 2147483647i), -max(u_input.c, u_input.c)));
}

fn func_5(arg_0: vec3<i32>, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_3(u_input.a, u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1313f * -533f) + func_2().b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 264f))) * arg_1), ~u_input.b);
    var var_1 = arg_0.x;
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_clamp_vec3_u32(max(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, var_0.b.x), vec3<u32>(3736u, 1u, u_input.b.x)) >> (vec3<u32>(u_input.b.x, 0u, 22844u) % vec3<u32>(32u))), (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, u_input.a, var_0.b.x), vec3<u32>(u_input.a, u_input.b.x, 3106u), vec3<u32>(var_0.b.x, u_input.a, 136u)) & (vec3<u32>(u_input.a, u_input.a, u_input.b.x) | vec3<u32>(4294967295u, 64482u, 117088u))) << (min(vec3<u32>(4294967295u, 34992u, var_0.d.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_0.a, 23735u), vec3<u32>(u_input.a, u_input.a, var_0.a), vec3<u32>(7297u, 1u, u_input.a))) % vec3<u32>(32u))), vec3<u32>(4294967295u, 16855u, ~_wgslsmith_div_u32(abs(47265u), 4294967295u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, 20546u, 27421u)), max(vec3<u32>(var_0.d.x, var_0.b.x, 56929u), vec3<u32>(var_0.b.x, 1u, 13672u)), _wgslsmith_add_vec3_u32(vec3<u32>(7259u, u_input.b.x, u_input.b.x), vec3<u32>(var_0.d.x, 31195u, 20728u))), vec3<u32>(min(29513u, 4039u), var_0.a, 0u & u_input.b.x)));
    var var_4 = !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), 4294967295u >= ~var_0.b.x), vec4<bool>(true, false, any(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)));
    return max(vec4<u32>(~(~var_3.x), var_0.a, _wgslsmith_add_u32(4294967295u, var_0.a), _wgslsmith_mod_u32(min(50935u, 1u), u_input.a)) & _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, 4294967295u, ~var_0.b.x, 28660u), min(vec4<u32>(4294967295u, u_input.a, var_3.x, 17177u), vec4<u32>(var_0.b.x, 4294967295u, var_3.x, 1u))), vec4<u32>(u_input.a, min(firstLeadingBit(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.a)), _wgslsmith_add_u32(u_input.a, var_3.x) & ~u_input.a), select(abs(reverseBits(var_0.a)), var_3.x, !(!var_4.x)), var_0.d.x << (var_3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(-(~func_4(_wgslsmith_f_op_f32(1053f + -410f), u_input.b.x <= 5803u, 1402f, func_1(vec3<u32>(75855u, 3781u, u_input.a), vec2<i32>(0i, u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1122f), 188f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f) - 482f))));
    var var_1 = var_0.xw;
    var_1 = ~_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(41827u, var_0.x))), select(var_0.yx, vec2<u32>(~4294967295u, 1u), vec2<bool>(select(false, true, false), false)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(788f, 378f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1582f), 1085f)))), 1f);
    let var_3 = reverseBits(vec2<u32>(var_0.x, func_5(vec3<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), _wgslsmith_mod_i32(u_input.c, 45752i), u_input.c), var_2.a.x).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.c, u_input.c, 11448i), vec3<i32>(-1i, 49027i, 1i), var_1.x, u_input.c, min(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, -1i, -1i, 55602i)) ^ ~20015i), abs(-u_input.c)));
}

