struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = 4294967295u;
    var var_1 = u_input.a.x;
    let var_2 = Struct_4(Struct_1(46598u <= ~(u_input.b.x >> (u_input.e % 32u)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_add_vec3_i32(select(select(vec3<i32>(u_input.d, u_input.d, 2147483647i), vec3<i32>(u_input.a.x, -11080i, 0i), vec3<bool>(true, false, false)) << (u_input.c.yyz % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, -22245i, u_input.d), -vec3<i32>(2147483647i, u_input.a.x, 2147483647i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)), firstLeadingBit(-max(vec3<i32>(33885i, 2147483647i, -7551i), vec3<i32>(u_input.a.x, -2753i, 2147483647i)))), Struct_3(u_input.d));
    var_1 = min(_wgslsmith_dot_vec3_i32(var_2.b, ~reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, 9641i), vec3<i32>(var_2.b.x, var_2.c.a, u_input.d)))), abs(~_wgslsmith_clamp_i32(7546i << (u_input.b.x % 32u), 1i, var_2.b.x)));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(~(~(~99029u)), u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.c.xyw, u_input.c.wwy), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.e), vec2<u32>(var_0, u_input.e))), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(u_input.c.x, u_input.b.x)), _wgslsmith_sub_u32(abs(u_input.e), u_input.e)), _wgslsmith_div_vec4_u32(vec4<u32>(~1u, var_0 ^ u_input.e, var_0 ^ var_0, 1u), ~u_input.c)));
    return select(!vec4<bool>(!any(vec3<bool>(false, var_2.a.a, false)), true, true, !(false || var_2.a.a)), !select(select(vec4<bool>(var_2.a.a, var_2.a.a, true, var_2.a.a), select(vec4<bool>(var_2.a.a, false, false, true), vec4<bool>(var_2.a.a, var_2.a.a, true, var_2.a.a), vec4<bool>(true, false, var_2.a.a, var_2.a.a)), vec4<bool>(true, var_2.a.a, true, false)), vec4<bool>(true, var_2.a.a && var_2.a.a, true, var_2.a.a), vec4<bool>(var_2.a.a, var_2.a.a, true, var_0 < var_0)), select(!any(select(vec2<bool>(false, var_2.a.a), vec2<bool>(var_2.a.a, false), vec2<bool>(true, false))), true, var_2.b.x >= -var_2.b.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec3<f32>) -> i32 {
    let var_0 = Struct_4(Struct_1(1u <= max(u_input.e, u_input.c.x), arg_3), _wgslsmith_clamp_vec3_i32(min(countOneBits(vec3<i32>(u_input.d, arg_1.a, -24232i)), -vec3<i32>(u_input.a.x, 2147483647i, 0i) ^ reverseBits(vec3<i32>(arg_1.a, arg_1.a, arg_1.a))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 33318i, u_input.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, -49645i, 31444i), vec3<i32>(arg_1.a, -25344i, -2147483647i), vec3<i32>(arg_1.a, 368i, u_input.d))), u_input.d), -(~(-vec3<i32>(u_input.d, 20472i, 0i)))), Struct_3(-_wgslsmith_sub_i32(~arg_1.a, -29102i)));
    let var_1 = arg_0.yx;
    var var_2 = vec2<bool>(!select(arg_2.x, var_0.a.a, var_0.a.b.x < _wgslsmith_div_f32(212f, 364f)), false);
    let var_3 = 0i;
    var var_4 = true;
    return -1i >> (~(~max(var_1.x, ~arg_0.x)) % 32u);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_vec3_u32(max(vec3<u32>(25758u, ~select(u_input.c.x, u_input.b.x, true), ~u_input.e), ~vec3<u32>(~u_input.b.x, ~23502u, 1u)), u_input.c.wxy, ~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 7046u, 14711u), ~(u_input.b.yxy >> (vec3<u32>(4294967295u, 4294967295u, u_input.c.x) % vec3<u32>(32u)))));
    let var_1 = 1746f;
    var var_2 = 1i;
    var_2 = u_input.a.x;
    var var_3 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1587f, arg_0, 419f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, arg_0, -1253f) + vec3<f32>(var_1, -475f, var_1))))), (any(vec2<bool>(true, true)) == true) | true, _wgslsmith_div_vec2_i32(firstTrailingBit(min(u_input.a, u_input.a)), vec2<i32>(~1i, 1i)) >> (_wgslsmith_mult_vec2_u32(abs(var_0.yz >> (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u))), ~vec2<u32>(33857u, u_input.e)) % vec2<u32>(32u)), 596f);
    return Struct_3(_wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, ~(~(-3196i))), ~countOneBits(i32(-1i) * -58018i), func_4((vec3<u32>(u_input.b.x, 0u, u_input.e) << (u_input.c.zzz % vec3<u32>(32u))) << (countOneBits(u_input.b.wxx) % vec3<u32>(32u)), Struct_3(var_3.c.x), func_3(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b.x, var_3.d, var_1)))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> Struct_3 {
    var var_0 = func_2(-457f);
    var_0 = func_2(1f);
    var var_1 = Struct_5(select(vec4<bool>(arg_1.x, !any(arg_1.zxy), false, (u_input.e & u_input.c.x) != 4294967295u), !func_3(), false), u_input.a.x, 667f, arg_1);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) + -1135f));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-564f, var_1.c));
    return func_2(var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.yx;
    let var_1 = func_1(min(_wgslsmith_sub_i32(u_input.a.x, ~(u_input.a.x ^ -6505i)), i32(-1i) * -u_input.d), vec4<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), true)), false, false), false);
    var var_2 = _wgslsmith_add_i32(-u_input.d, 1i);
    var var_3 = ~u_input.a;
    var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 1u, ~33960u), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c.xzx, vec3<u32>(var_0.x, var_0.x, 0u)), 14056u, _wgslsmith_mod_u32(u_input.c.x, 50488u))));
}

