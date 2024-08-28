struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = Struct_2(arg_0);
    let var_1 = var_0.a;
    var_0 = Struct_2(arg_0);
    var_0 = Struct_2(Struct_1(select(vec2<bool>(var_1.b >= 0i, select(arg_0.a.x, true, true)), vec2<bool>(!arg_0.a.x, true), vec2<bool>(false, var_1.a.x)), -2147483647i >> (arg_1.x % 32u)));
    let var_2 = var_0.a;
    return ~arg_1.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(26820u, 12025u, 26766u, arg_1.x)), vec4<u32>(arg_1.x, 1185u, 1u, 54962u)) ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x), _wgslsmith_dot_vec2_u32(arg_1, arg_1))), arg_1.x, 59610u ^ func_3(Struct_1(vec2<bool>(true, true), ~7393i), firstTrailingBit(arg_1 << (vec2<u32>(2002u, arg_1.x) % vec2<u32>(32u))), vec3<i32>(reverseBits(14955i), -19938i, 2147483647i)), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(arg_1.x, 11001u, 4294967295u)) & _wgslsmith_mult_vec3_u32(~vec3<u32>(29748u, 73509u, 0u), ~vec3<u32>(arg_1.x, 0u, 15864u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(22757u, arg_1.x, 0u), ~vec3<u32>(arg_1.x, 37248u, arg_1.x)))));
    var var_1 = _wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.zzx), (var_0.zwy & select(select(vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.xyz, vec3<bool>(true, false, true)), var_0.zxx, vec3<bool>(true, true, true))) >> (~select(vec3<u32>(0u, 0u, var_0.x), vec3<u32>(var_0.x, arg_1.x, var_0.x), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)) % vec3<u32>(32u)));
    var var_2 = 1i | u_input.a.x;
    var_1 = ~var_0.x;
    var_2 = max(~0i, 61391i);
    return arg_2;
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(u_input.a.x, u_input.a.x >> (0u % 32u)), vec2<u32>(~43625u, 16226u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, -393f, 1430f, 1816f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-581f))), 1261f, _wgslsmith_f_op_f32(f32(-1f) * -2769f)) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(521f * -681f), _wgslsmith_div_f32(1327f, -1491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2708f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(-886f))), -1212f)));
    var var_1 = abs(~(-_wgslsmith_add_i32(u_input.a.x, 0i)));
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), ~select(abs(vec3<u32>(4294967295u, 39382u, 27351u)), ~vec3<u32>(18555u, 4294967295u, 1u), true), select(vec3<u32>(1u, 4294967295u, min(~0u, ~4294967295u)), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), true), vec3<bool>(true, select(u_input.a.x < u_input.a.x, true, -1623f >= var_0.x), true)));
    var_2 = vec3<u32>(var_2.x, ~1u, ~1130u);
    let var_3 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(select(1465f, 149f, false)) <= var_0.x), vec2<bool>(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, 20244i) <= -2147483647i, false), !any(vec2<bool>(false, false))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-22097i, u_input.a.x), -21913i), u_input.a.x) & -1i);
    return firstTrailingBit(~(~firstTrailingBit(vec4<u32>(1u, 0u, var_2.x, 49721u))) ^ min(~vec4<u32>(var_2.x, 19378u, 51345u, var_2.x) << (countOneBits(vec4<u32>(94516u, var_2.x, 26617u, var_2.x)) % vec4<u32>(32u)), abs(select(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_3.a.x, var_3.a.x, true, var_3.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec2<bool>(true, abs(u_input.a.x) < _wgslsmith_mult_i32(-92592i, u_input.a.x)), vec2<bool>(all(vec4<bool>(false, true, false, false)) || select(false, true, false), any(vec4<bool>(true, true, true, true))), true), -(~(-27159i)));
    var var_1 = select(~min(func_1(), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 0u, 55351u, 0u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(16691u >> (0u % 32u), ~28771u, ~24595u, ~0u), ~min(abs(vec4<u32>(26906u, 1u, 75922u, 5034u)), abs(vec4<u32>(15569u, 0u, 0u, 4294967295u)))), !var_0.a.x);
    var var_2 = _wgslsmith_sub_u32(~(~(96064u & var_1.x)) >> (52521u % 32u), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-440f, _wgslsmith_f_op_f32(round(1486f)), -_wgslsmith_add_i32(min(0i, u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 56831i, 44598i), vec3<i32>(0i, 0i, var_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, 44621i, var_0.b)))));
}

