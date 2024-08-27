struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_3,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(809f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -808f), 3640f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))))), vec2<bool>(false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false))), Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1127f, -136f, -323f, 280f) + vec4<f32>(1502f, 1198f, 108f, 706f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1206f, 438f, -608f, 183f) * vec4<f32>(-1950f, -284f, 852f, -798f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1813f, 1114f, -828f, -350f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, 1255f, 159f, 894f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))))), ~(-2147483647i), vec4<bool>(!(u_input.b >= 1i) | false, all(vec2<bool>(true, true)) && false, !(true && any(vec4<bool>(false, true, false, true))), select(any(vec2<bool>(true, true)), abs(arg_0.x) >= arg_0.x, select(any(vec3<bool>(true, true, true)), true, true))));
    var var_1 = false;
    var_1 = var_0.b.x;
    let var_2 = vec4<i32>(0i, -25823i, countOneBits(var_0.d | ~_wgslsmith_add_i32(1i, -25464i)), ~(~(-(-1i >> (arg_0.x % 32u)))));
    var_1 = !all(!var_0.e.zzz);
    return var_0.b.x || true;
}

fn func_2() -> bool {
    let var_0 = vec3<bool>(func_3(vec3<u32>(42893u, ~(~1u), 1u)), true, ~(select(0u, 12607u, true) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(59177u, 64442u, 85192u), vec3<u32>(4294967295u, 1u, 1u))) != 4294967295u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, 874f, -936f, 1392f) - vec4<f32>(769f, 754f, 1240f, 333f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-896f, -1015f, 1183f, 112f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, 150f, -367f, -535f))))))), Struct_1(vec4<i32>(u_input.b, u_input.b, -_wgslsmith_mult_i32(-1i, -15333i), 1i)));
    let var_2 = firstLeadingBit(~(~(~vec4<u32>(0u, 0u, 34866u, 0u))));
    let var_3 = true;
    let var_4 = -1i;
    return var_3;
}

fn func_1() -> bool {
    let var_0 = vec4<f32>(-475f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1517f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 552f);
    let var_1 = u_input.a.yy;
    let var_2 = vec4<i32>(min(var_1.x, -36734i), ~(~20302i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(37822u, 0u, 4315u), vec3<u32>(0u, 12318u, 0u), false)) % 32u), -24536i << (_wgslsmith_mult_u32(firstTrailingBit(15915u), ~4294967295u) % 32u), 11303i) >> (abs(abs(vec4<u32>(1u, 1u, 1u, 1u))) % vec4<u32>(32u));
    let var_3 = select(abs(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(~vec4<u32>(7104u, 33966u, 1u, 12887u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 1u, 2719u), vec4<u32>(1037u, 114925u, 1u, 6647u)))) ^ ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 0u, 64219u), vec4<u32>(46859u, 1u, 0u, 1u)), select(vec4<u32>(27568u, 0u, 4294967295u, 0u), vec4<u32>(1u, 1u, 16345u, 0u), false)), select(true, false && !func_2(), true));
    let var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.zw, vec2<f32>(1000f, var_0.x)))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 818f), var_0.zx)), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false), u_input.b > var_1.x)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), true || !all(vec3<bool>(true, true, true))), Struct_3(vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -186f))), _wgslsmith_f_op_f32(ceil(-194f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-169f + var_0.x)))), abs(31242i), vec4<bool>(true, true, any(vec2<bool>(func_2(), any(vec4<bool>(true, true, true, true)))), (abs(4294967295u) > _wgslsmith_add_u32(0u, var_3.x)) && false));
    return true & (var_4.e.x | true);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = any(select(vec3<bool>(-1i >= -u_input.b, arg_2.a.x, arg_2.a.x), select(vec3<bool>(all(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), arg_2.a.x, arg_2.a.x), select(!vec3<bool>(false, false, arg_2.a.x), vec3<bool>(true, arg_2.a.x, true), vec3<bool>(true, true, true)), 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(16117i, u_input.b, -2147483647i, u_input.a.x), vec4<i32>(-2147483647i, 0i, u_input.b, 2147483647i))), min(abs(arg_1.x), _wgslsmith_clamp_u32(arg_1.x, 6599u, arg_1.x)) > firstTrailingBit(54613u)));
    let var_1 = -vec3<i32>(abs(22i), ~25525i, -abs(u_input.a.x));
    var var_2 = reverseBits(u_input.a.x);
    let var_3 = arg_1.x >> (~1u % 32u);
    let var_4 = Struct_2(arg_2.b, Struct_1(vec4<i32>(2147483647i, u_input.a.x, firstLeadingBit(-26235i), _wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(var_1.yz, vec2<i32>(2143i, u_input.b))))));
    return Struct_1(-select(_wgslsmith_add_vec4_i32(var_4.b.a >> (vec4<u32>(53309u, arg_1.x, 0u, var_3) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, -2147483647i, 2770i, var_1.x)), -var_4.b.a, !select(vec4<bool>(true, arg_2.a.x, true, false), vec4<bool>(true, arg_2.a.x, var_0, arg_2.a.x), vec4<bool>(false, var_0, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1440f, _wgslsmith_f_op_f32(sign(1428f)), func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2333f - 1314f)), 1098f) * vec3<f32>(_wgslsmith_f_op_f32(select(-535f, _wgslsmith_f_op_f32(min(-123f, 1000f)), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-335f - 2300f), -1179f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-432f, 253f)), _wgslsmith_f_op_f32(f32(-1f) * -590f)))), vec4<u32>(~4294967295u, ~_wgslsmith_div_u32(reverseBits(1u), countOneBits(1u)), (~0u << (firstTrailingBit(7357u) % 32u)) << (40958u % 32u), reverseBits(~(~4294967295u))), Struct_3(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(func_1(), all(vec3<bool>(true, false, true))), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-673f - -671f), _wgslsmith_f_op_f32(-452f + 891f), _wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -747f)))), 405f);
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(select(-1494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f * -804f)), false)), 1f), vec2<bool>(true, true), Struct_3(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, 904f, -188f, 259f)))), -((u_input.a.x << (_wgslsmith_mult_u32(18090u, 28446u) % 32u)) & _wgslsmith_add_i32(-u_input.a.x, countOneBits(u_input.a.x))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true), vec4<bool>(true, true, u_input.a.x < u_input.a.x, true), vec4<bool>(true, func_1(), true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), all(vec4<bool>(true, true, true, false))), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-568f)), _wgslsmith_div_f32(1358f, 313f))) <= _wgslsmith_f_op_f32(floor(-873f))));
    var var_2 = var_0.a.x;
    var var_3 = ~36556u;
    let var_4 = vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2813f));
    var var_5 = Struct_3(var_1.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.c.b.x, var_1.c.b.x, var_4.x))))));
    var var_6 = countOneBits(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, _wgslsmith_mult_u32(87442u, 1u), 28443u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 75905u), vec2<u32>(4294967295u, 4294967295u)), ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 22998u), vec2<u32>(1u, 52305u))), ~vec3<u32>(4294967295u, 24723u, 0u)), vec3<u32>(1u, 1u, 1u)));
    var_3 = _wgslsmith_add_u32(~var_6.x, 33283u);
    let var_7 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, var_7 ^ 0u, _wgslsmith_clamp_vec2_i32(vec2<i32>(-4583i, 2147483647i), vec2<i32>(-2147483647i, ~var_1.d), ~(vec2<i32>(var_1.d, 1i) & max(vec2<i32>(2147483647i, -32934i), vec2<i32>(24657i, var_1.d)))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(35881u, ~var_7, var_7), vec3<u32>(_wgslsmith_mod_u32(50938u, 1u), _wgslsmith_div_u32(var_6.x, var_7), ~var_7)), _wgslsmith_mult_vec3_u32(vec3<u32>(~4294967295u, var_7, 40662u), _wgslsmith_sub_vec3_u32(select(vec3<u32>(51830u, 20132u, 1u), vec3<u32>(var_6.x, var_6.x, 15745u), var_1.e.xyw), ~vec3<u32>(0u, 1u, var_6.x)))));
}

